import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_market_game/ui/news/news_item.dart';
import 'package:stock_market_game/ui/news/news_vm.dart';
import 'package:stock_market_game/utils/dimensions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewsView extends ConsumerStatefulWidget {
  const NewsView({super.key});

  @override
  ConsumerState<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends ConsumerState<NewsView>
    with AutomaticKeepAliveClientMixin {
  final _scrollController = ScrollController();

  void _onScroll() {
    if (_isBottom) {
      ref.read(newsViewNotifierProvider.notifier).loadMoreNewsArticle();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final state = ref.watch(newsViewNotifierProvider);

    ref.listen(newsViewNotifierProvider, (previous, next) {
      if (next.isError) {}
    });

    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.size12, vertical: Dimensions.size16),
            child: Text(
              AppLocalizations.of(context)!.marketNews,
              style: TextTheme.of(context).headlineLarge,
            ),
          ),
        ),
        state.isInitialLoad
            ? SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : SliverList(
                delegate: SliverChildBuilderDelegate(
                    childCount: state.isLoadMoreDone
                        ? state.news.length
                        : state.news.length + 1, (_, index) {
                  return index >= state.news.length && !state.isLoadMoreDone
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : NewsItem(state.news[index]);
                }),
              ),
      ],
    );
  }
}

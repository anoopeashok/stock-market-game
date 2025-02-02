import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stock_market_game/domain/models/news/news_model.dart';
import 'package:stock_market_game/utils/dimensions.dart';

class NewsItem extends StatelessWidget {
  NewsItem(this.newsArticle, {super.key});
  NewsArticle newsArticle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.size12),
      margin: EdgeInsets.only(
          left: Dimensions.size12,
          right: Dimensions.size12,
          bottom: Dimensions.size14),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(Dimensions.roundedRadius12)),
      child: Column(
        spacing: Dimensions.size8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: Dimensions.size8,
            children: [
              Expanded(
                  flex: 3,
                  child: Image.network(
                    newsArticle.images.isNotEmpty ? newsArticle.images[0].url : '',
                    fit: BoxFit.cover,
                  )),
              Expanded(
                  flex: 7,
                  child: Text(
                    newsArticle.headline,
                    maxLines: 4,
                    style: TextTheme.of(context)
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          Text(
            AppLocalizations.of(context)!.summary(newsArticle.summary),
            style: TextTheme.of(context).labelLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: Dimensions.size14,
            children: [
               Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: Dimensions.size4,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      for (int i = 0; i < newsArticle.symbols.length; i++)
                        Chip(label: Text(newsArticle.symbols[i]))
                    ],
                  ),
                ),
              ),
              Text(
                AppLocalizations.of(context)!.readMore,
                style: TextStyle(color: Theme.of(context).primaryColorDark),
              ),
             
            ],
          )
        ],
      ),
    );
  }
}

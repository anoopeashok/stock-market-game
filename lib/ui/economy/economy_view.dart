// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:stock_market_game/domain/entity/econnomy_information.dart';
import 'package:stock_market_game/ui/economy/economy_vm.dart';
import 'package:stock_market_game/utils/dimensions.dart';

import '../core/auto_scroll_led_text.dart';

class EconomyView extends ConsumerStatefulWidget {
  const EconomyView({super.key});

  @override
  ConsumerState<EconomyView> createState() => _EconomyViewState();
}

class _EconomyViewState extends ConsumerState<EconomyView>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final state = ref.watch(getEconomyInformationProvider);
    return state.when(
        data: (data) => SingleChildScrollView(
              child: Column(
                spacing: Dimensions.size12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.size14),
                    child: Text(
                      AppLocalizations.of(context)!.economy,
                      style: TextTheme.of(context).headlineLarge,
                    ),
                  ),
                  EconomyLedBoard(economyInformationEntity: data),
                  
                ],
              ),
            ),
        error: (error, st) => Text(error.toString()),
        loading: () => Center(
              child: CircularProgressIndicator(),
            ));
  }
}

class EconomyLedBoard extends StatelessWidget {
  final EconomyInformationEntity economyInformationEntity;
  const EconomyLedBoard({
    super.key,
    required this.economyInformationEntity,
  });

  @override
  Widget build(BuildContext context) {
    return AutoScrollingLED(
      text:
          'GDP: ${economyInformationEntity.gdpModel.data.first.value} Fed Rate: ${economyInformationEntity.federalFundsRateModel.data.first.value} CPI: ${economyInformationEntity.cpiModel.data.first.value} Unemployement: ${economyInformationEntity.unemploymentRateModel.data.first.value} ',
    );
  }
}

class EconomyInfo extends StatelessWidget {
  final EconomyInformationEntity economyInformationEntity;

  const EconomyInfo({super.key, required this.economyInformationEntity});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: Dimensions.size14,
      children: [
        EconomyInfoCard(
            value:
                economyInformationEntity.federalFundsRateModel.data.first.value,
            description: economyInformationEntity.federalFundsRateModel.name),
        EconomyInfoCard(
            value:
                economyInformationEntity.unemploymentRateModel.data.first.value,
            description: economyInformationEntity.unemploymentRateModel.name)
      ],
    );
  }
}

class EconomyInfoCard extends StatelessWidget {
  final String value, description;
  const EconomyInfoCard({
    super.key,
    required this.value,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.roundedRadius16)),
      padding: EdgeInsets.all(Dimensions.size14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Dimensions.size12,
        children: [
          Text(
            value,
            style: TextTheme.of(context).displayLarge,
          ),
          Text(
            description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextTheme.of(context).bodyLarge,
          )
        ],
      ),
    );
  }
}

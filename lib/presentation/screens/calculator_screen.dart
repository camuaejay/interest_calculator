import 'dart:math';

import 'package:flutter/material.dart';
import 'package:interest_calculator/core/managers/theme_manager/extensions/theme_colors.extension.dart';
import 'package:interest_calculator/core/managers/theme_manager/extensions/theme_manager.extensions.dart';
import 'package:interest_calculator/core/managers/theme_manager/extensions/theme_values.extension.dart';
import 'package:interest_calculator/core/shared/components/layout/spacers/app_spacers.dart';
import 'package:interest_calculator/domain/models/loan.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  var loan = Loan();
  var interestRate = (Random().nextDouble() * 10);

  @override
  Widget build(BuildContext context) {
    var options = [500, 1000, 5000];

    ThemeData theme = context.theme;

    return Container(
      color: theme.scaffoldBackgroundColor,
      child: Column(
        children: [
          Column(
            children: [
              generalLoanInformationWidget(),
              AppSpacers.verticalSpacer(),
              Container(
                  color: theme.scaffoldBackgroundColor,
                  padding: EdgeInsets.all(theme.dimensions.paddingNormal),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: defaultOptions(options),
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }

  Widget generalLoanInformationWidget() {
    final ThemeData theme = context.theme;

    return ClipRRect(
      borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(theme.dimensions.cornerRadiusNormal)),
      child: Container(
        color: theme.colorScheme.primary,
        padding: EdgeInsets.all(theme.dimensions.paddingNormal),
        child: Column(
          children: [
            Center(
              child: Text(
                "Est. Monthly Payment",
                style: context.theme.textTheme.headlineMedium
                    ?.copyWith(color: theme.colorScheme.onPrimary),
                textAlign: TextAlign.center,
              ),
            ),
            AppSpacers.verticalSpacer(),
            Center(
              child: Text(
                loan.estimatedPerMonth.toString(),
                style: theme.textTheme.headlineMedium
                    ?.copyWith(color: theme.colorScheme.onPrimary),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                interestRateWidget(),
                AppSpacers.horizontalSpacer(),
                estimatedLoanTotal(),
              ],
            ),
            AppSpacers.verticalSpacer(
                height: context.theme.dimensions.heightLarge)
          ],
        ),
      ),
    );
  }

  Flexible interestRateWidget() {
    final ThemeData theme = context.theme;

    return Flexible(
      child: Container(
        decoration: theme.decorations.defaultRoundedWithShadow(),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    color: theme.colorScheme.success,
                    child: Center(
                      child: Text(
                        "Interest Rate",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSuccess,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            AppSpacers.verticalSpacer(),
            Column(
              children: [
                Center(
                  child: Text(
                    interestRate.toStringAsFixed(2),
                  ),
                ),
                AppSpacers.verticalSpacer(),
                const Center(
                  child: Text("Based on today's Est Loan Rate",
                      textAlign: TextAlign.center),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> defaultOptions(List<int> options) {
    List<Widget> widgets = <Widget>[];

    options.forEach((element) {
      var button =
          ElevatedButton(onPressed: () => {}, child: Text(element.toString()));
      widgets.add(button);
    });

    return widgets;
  }

  Flexible estimatedLoanTotal() {
    final ThemeData theme = context.theme;

    return Flexible(
      child: Container(
        decoration: theme.decorations.defaultRoundedWithShadow(),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    color: theme.colorScheme.success,
                    child: Center(
                      child: Text(
                        "Est. Loan Amount",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSuccess,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            AppSpacers.verticalSpacer(),
            Column(
              children: [
                Center(
                  child: Text(
                    interestRate.toStringAsFixed(2),
                  ),
                ),
                AppSpacers.verticalSpacer(),
                const Center(
                  child: Text("Based on today's Est Loan Rate",
                      textAlign: TextAlign.center),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

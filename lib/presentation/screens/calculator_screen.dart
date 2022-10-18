import 'dart:math';

import 'package:flutter/material.dart';
import 'package:interest_calculator/core/managers/theme_manager/extensions/theme_manager.extensions.dart';
import 'package:interest_calculator/domain/models/loan.dart';
import 'package:interest_calculator/presentation/shared/themes/app_decorations.dart';
import 'package:interest_calculator/presentation/shared/themes/app_dimensions.dart';
import 'package:interest_calculator/presentation/shared/themes/app_spacers.dart';
import 'package:interest_calculator/presentation/shared/themes/app_text_styles.dart';

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
    return Container(
      color: context.theme.colorScheme.surface,
      child: Column(
        children: [
          Column(
            children: [
              generalLoanInformationWidget(),
            ],
          ),
        ],
      ),
    );
  }

  Widget generalLoanInformationWidget() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
      child: Container(
        color: context.theme.colorScheme.primary,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Est. Monthly Payment",
                style: AppTextStyles.header.copyWith(color: Colors.white),
              ),
            ),
            AppSpacers.verticalSpacer(),
            Center(
              child: Text(
                loan.estimatedPerMonth.toString(),
                style: AppTextStyles.header.copyWith(color: Colors.white),
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
            AppSpacers.verticalSpacer(height: AppDimensions.heightLarge())
          ],
        ),
      ),
    );
  }

  Flexible interestRateWidget() {
    return Flexible(
      child: Container(
        decoration: AppDecorations.defaultRoundedWithShadow(),
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
                    color: Colors.green[800],
                    child: Center(
                      child: Text(
                        "Interest Rate",
                        style: AppTextStyles.defaultStyle
                            .copyWith(color: Colors.white, fontSize: 12),
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

  Flexible estimatedLoanTotal() {
    return Flexible(
      child: Container(
        decoration: AppDecorations.defaultRoundedWithShadow(),
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
                    color: Colors.green[800],
                    child: Center(
                      child: Text(
                        "Est. Loan Amount",
                        style: AppTextStyles.defaultStyle
                            .copyWith(color: Colors.white, fontSize: 12),
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

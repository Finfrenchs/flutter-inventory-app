import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';
import 'indicator.dart';

class PieChartSample extends StatefulWidget {
  const PieChartSample({super.key});

  @override
  State<StatefulWidget> createState() => PieChartSampleState();
}

class PieChartSampleState extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: [
          const SpaceHeight(18.0),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Indicator(
                color: AppColors.primary,
                text: 'Acer Aspire',
              ),
              SpaceHeight(4.0),
              Indicator(
                color: AppColors.yellow,
                text: 'iPhone 12',
              ),
              SpaceHeight(4.0),
              Indicator(
                color: AppColors.gray,
                text: 'Logitec Mouse',
              ),
              SpaceHeight(4.0),
              Indicator(
                color: AppColors.green,
                text: 'Xiaomi Monitor',
              ),
              SpaceHeight(18.0),
            ],
          ),
          const SpaceWidth(28.0),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      final titleStyle = TextStyle(
        fontSize: fontSize,
        color: AppColors.white,
      );
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.primary,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: titleStyle,
          );
        case 1:
          return PieChartSectionData(
            color: AppColors.yellow,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: titleStyle,
          );
        case 2:
          return PieChartSectionData(
            color: AppColors.gray,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: titleStyle,
          );
        case 3:
          return PieChartSectionData(
            color: AppColors.green,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: titleStyle,
          );
        default:
          throw Error();
      }
    });
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:widgets/app/core/ui/themes/app_colors.dart';

class ChartBar extends StatelessWidget {
  final int soilTemperature;
  final int ambientTemperature;
  final int insolation;
  final int soilMoisture;
  final int ambientMoisture;

  const ChartBar({
    super.key,
    required this.soilTemperature,
    required this.ambientTemperature,
    required this.insolation,
    required this.soilMoisture,
    required this.ambientMoisture,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceBetween,
          maxY: 16,
          groupsSpace: 10,
          borderData: FlBorderData(border: const Border()),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(drawBehindEverything: false),
            rightTitles: AxisTitles(drawBehindEverything: false),
            topTitles: AxisTitles(drawBehindEverything: false),
            // bottomTitles: AxisTitles(drawBehindEverything: false),
          ),
          gridData: FlGridData(
            drawHorizontalLine: false,
            drawVerticalLine: false,
          ),
          barGroups: [
            BarChartGroupData(
              x: soilTemperature,
              barRods: [
                BarChartRodData(
                  rodStackItems: [
                    BarChartRodStackItem(8, 14, Colors.white),
                  ],
                  toY: 14,
                  width: 30,
                  borderRadius: BorderRadius.zero,
                  borderSide: const BorderSide(
                    color: AppColors.grey,
                  ),
                  color: AppColors.purpleBlue,
                ),
              ],
            ),
            BarChartGroupData(
              x: ambientTemperature,
              barRods: [
                BarChartRodData(
                  rodStackItems: [
                    BarChartRodStackItem(10, 14, Colors.white),
                  ],
                  toY: 14,
                  width: 30,
                  borderRadius: BorderRadius.zero,
                  borderSide: const BorderSide(
                    color: AppColors.grey,
                  ),
                  color: AppColors.green,
                ),
              ],
            ),
            BarChartGroupData(
              x: insolation,
              barRods: [
                BarChartRodData(
                  rodStackItems: [
                    BarChartRodStackItem(5, 14, Colors.white),
                  ],
                  toY: 14,
                  width: 30,
                  borderRadius: BorderRadius.zero,
                  borderSide: const BorderSide(
                    color: AppColors.grey,
                  ),
                  color: Colors.amber,
                ),
              ],
            ),
            BarChartGroupData(
              x: soilMoisture,
              barRods: [
                BarChartRodData(
                  rodStackItems: [
                    BarChartRodStackItem(2, 14, Colors.white),
                  ],
                  toY: 14,
                  width: 30,
                  borderRadius: BorderRadius.zero,
                  borderSide: const BorderSide(
                    color: AppColors.grey,
                  ),
                  color: AppColors.purpleBlue,
                ),
              ],
            ),
            BarChartGroupData(
              x: ambientMoisture,
              barRods: [
                BarChartRodData(
                  rodStackItems: [
                    BarChartRodStackItem(13, 14, Colors.white),
                  ],
                  toY: 14,
                  width: 30,
                  borderRadius: BorderRadius.zero,
                  borderSide: const BorderSide(
                    color: AppColors.grey,
                  ),
                  color: AppColors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

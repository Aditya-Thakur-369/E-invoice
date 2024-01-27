import 'package:e_invoice/features/dashboard/model/chart_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ExpensesChat extends StatelessWidget {
  const ExpensesChat({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> expenses = [
      ChartData('Expense', 22, Colors.red),
      ChartData('Income', 78, Colors.green),
    ];
    return SizedBox(
      height: 200,
      width: 200,
      child: SfCircularChart(
        series: <CircularSeries>[
          DoughnutSeries<ChartData, String>(
            dataSource: expenses,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            pointColorMapper: (ChartData data, _) => data.color,
            dataLabelSettings: DataLabelSettings(
              isVisible: true,
              labelAlignment: ChartDataLabelAlignment.middle,
              alignment: ChartAlignment.near,
              margin: const EdgeInsets.all(8),
              overflowMode: OverflowMode.shift,
              connectorLineSettings: const ConnectorLineSettings(
                  length: "40%", color: Colors.green),
              textStyle: GoogleFonts.plusJakartaSans(
                  fontSize: 14, fontWeight: FontWeight.w500),
            ),
            explodeAll: true,
            innerRadius: '60%',
            explode: true,
            animationDelay: 1000,
            radius: '70%',
          ),
        ],
      ),
    );
  }
}

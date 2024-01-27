import 'package:e_invoice/features/dashboard/model/chart_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AnalysisChat extends StatelessWidget {
  const AnalysisChat({super.key});

  @override
  Widget build(BuildContext context) {
     final List<ChartData> analysis = [
    ChartData('Collected', 70, Colors.blue),
    ChartData('OutStanding', 30, Colors.purple),
  ];
    return SizedBox(
      height: 200,
      width: 200,
      child: SfCircularChart(
        series: <CircularSeries>[
          DoughnutSeries<ChartData, String>(
            dataSource: analysis,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            pointColorMapper: (ChartData data, _) => data.color,
            dataLabelSettings: const DataLabelSettings(
              isVisible: true,
              alignment: ChartAlignment.center,
              margin: EdgeInsets.all(8),
              overflowMode: OverflowMode.shift,
              connectorLineSettings:
                  ConnectorLineSettings(length: "10%", color: Colors.purple),
              // textStyle: GoogleFonts.roboto(
              // fontSize: 10,
              // color: Colors.transparent.withOpacity(0.),
              // fontWeight: FontWeight.w500),
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

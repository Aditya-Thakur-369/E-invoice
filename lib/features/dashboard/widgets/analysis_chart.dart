import 'package:e_invoice/features/dashboard/model/chart_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AnalysisChat extends StatefulWidget {
  const AnalysisChat({super.key});

  @override
  State<AnalysisChat> createState() => _AnalysisChatState();
}

class _AnalysisChatState extends State<AnalysisChat> {
  late TooltipBehavior _tooltipbehavior;

  @override
  void initState() {
    _tooltipbehavior = TooltipBehavior(enable: true);
    super.initState();
  }

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
        tooltipBehavior: _tooltipbehavior,
        series: <CircularSeries>[
          DoughnutSeries<ChartData, String>(
            dataSource: analysis,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            pointColorMapper: (ChartData data, _) => data.color,
            dataLabelSettings: DataLabelSettings(
              isVisible: true,
              alignment: ChartAlignment.center,
              margin: const EdgeInsets.all(8),
              overflowMode: OverflowMode.shift,
              connectorLineSettings: const ConnectorLineSettings(
                  length: "10%", color: Colors.purple),
              textStyle: GoogleFonts.roboto(
                  fontSize: 10,
                  color: Colors.transparent,
                  fontWeight: FontWeight.w500),
            ),
            enableTooltip: true,
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


import "package:e_invoice/features/dashboard/model/statics_model.dart";
import 'widgets/analysis_chart.dart';
import '''
package:e_invoice/features/dashboard/widgets/appbar.dart''';
import '''
package:e_invoice/features/dashboard/widgets/custom_cards.dart''';
import '''
package:e_invoice/features/dashboard/widgets/customcupertino_button.dart''';
import '''
package:e_invoice/features/dashboard/widgets/expenses_chart.dart''';
import 'package:e_invoice/features/dashboard/widgets/linechart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List<StatisticsModel> statistics = [
    StatisticsModel(title: 'Invoices', value: '20'),
    StatisticsModel(title: 'Clients', value: '04'),
    StatisticsModel(title: 'Products', value: '42'),
    StatisticsModel(title: 'Payments', value: '28'),
    StatisticsModel(title: 'Expenses', value: '06'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppBarView(),
          SliverPadding(
            padding: const EdgeInsets.all(14.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text(
                    "TOTAL COLLECTION OF THIS YEAR",
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(children: <InlineSpan>[
                            TextSpan(
                              text: "\$38.106",
                              style: GoogleFonts.roboto(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: " USD",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  color:
                                      const Color.fromARGB(255, 70, 211, 197),
                                  fontWeight: FontWeight.w700),
                            )
                          ])),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Text("%80",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          LinearPercentIndicator(
                              animation: true,
                              animationDuration: 1000,
                              barRadius: const Radius.circular(20),
                              width: 120.0,
                              lineHeight: 8,
                              percent: 0.9,
                              progressColor:
                                  const Color.fromARGB(255, 70, 211, 197)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    " Quck Actions",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Column(
                    children: [
                      Row(
                        children: [
                          TotalOutingCard(),
                          Spacer(),
                          TotalClientCard(),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          AddProductCard(),
                          Spacer(),
                          TotalPaymentCard(),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    " Growth",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CustomCupertinoButton(
                              image: "assets/icons/expense.png",
                              onpress: () {
                                setState(() {});
                              },
                              text: "Expenses",
                            ),
                            CustomCupertinoButton(
                              image: "assets/icons/analysis.png",
                              text: "Analysis",
                              onpress: () {},
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            ExpensesChat(),
                            AnalysisChat(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Analysis",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const LineChartSample2(),
                  ),
                  const Divider(),
                  const SizedBox(height: 20),
                  const Text(
                    "Statistics",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            statistics[index].title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            statistics[index].value,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      separatorBuilder: (context, index) =>
                          FractionallySizedBox(
                        widthFactor: .8,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 1,
                            color: Colors.grey.withOpacity(.4),
                          ),
                        ),
                      ),
                      itemCount: statistics.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

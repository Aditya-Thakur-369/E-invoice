import 'package:e_invoice/features/dashboard/widgets/linechart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:e_invoice/features/dashboard/widgets/analysis_chart.dart';
import 'package:e_invoice/features/dashboard/widgets/appbar.dart';
import 'package:e_invoice/features/dashboard/widgets/custom_cards.dart';
import 'package:e_invoice/features/dashboard/widgets/customcupertino_button.dart';
import 'package:e_invoice/features/dashboard/widgets/expenses_chart.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarView(),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                            color: const Color.fromARGB(255, 70, 211, 197),
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
                        progressColor: const Color.fromARGB(255, 70, 211, 197)),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
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
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CustomCupertinoButton(
                    image: "assets/icons/expense.png",
                    onpress: () {
                      setState(() {});
                    },
                    text: "Expenses"),
                CustomCupertinoButton(
                  image: "assets/icons/analysis.png",
                  text: "Analysis",
                  onpress: () {},
                )
              ],
            ),
            const Row(
              children: [ExpensesChat(), AnalysisChat()],
            ),
            SizedBox(height: 400, width: 450, child: LineChartSample2())
          ]),
        ),
      ),
    );
  }
}

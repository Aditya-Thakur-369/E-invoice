import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class TotalOutingCard extends StatelessWidget {
  const TotalOutingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 190,
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFFFB400),
                Color.fromARGB(255, 244, 94, 8),
              ])),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent.withOpacity(0.1)),
                        child: const Icon(
                          Iconsax.clock,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "TOTAL OUTSTANDING",
                        style: GoogleFonts.openSans(
                            color: Colors.white60,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "\$2500.95",
                        style: GoogleFonts.roboto(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.2),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                      child: Text(
                    "USD",
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  )),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 10,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.add,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}

class TotalClientCard extends StatelessWidget {
  const TotalClientCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 190,
      decoration: BoxDecoration(
          // color: Color(0xFFDE802E),
          color: const Color.fromARGB(255, 70, 211, 197),
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF167EFF), Colors.teal])),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent.withOpacity(0.1)),
                        child: const Icon(
                          Iconsax.personalcard,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "TOTAL CLIENT",
                        style: GoogleFonts.openSans(
                            color: Colors.white60,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "103",
                        style: GoogleFonts.roboto(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      // color: Colors.transparent.withOpacity(0.2),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Latest :",
                          style: GoogleFonts.openSans(
                              color: Colors.white60,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Rajeev Chauhan ",
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 10,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.add,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}

class AddProductCard extends StatelessWidget {
  const AddProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 190,
      decoration: BoxDecoration(
          // color: Color(0xFFDE802E),
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          // boxShadow: [
          //   const BoxShadow(
          //       color: Color(0xFFDE802E),
          //       blurRadius: 20,
          //       spreadRadius: 0.8,
          //       blurStyle: BlurStyle.inner)
          // ]),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.pinkAccent,
                Colors.redAccent,
              ])),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent.withOpacity(0.1)),
                        child: const Icon(
                          Iconsax.menu,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "TOTAL PRODUCT",
                        style: GoogleFonts.openSans(
                            color: Colors.white60,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "49",
                        style: GoogleFonts.roboto(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      // color: Colors.transparent.withOpacity(0.2),

                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lastest :",
                          style: GoogleFonts.openSans(
                              color: Colors.white60,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "BreadBoard ",
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 10,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.add,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}

class TotalPaymentCard extends StatelessWidget {
  const TotalPaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 190,
      decoration: BoxDecoration(
          // color: Color(0xFFDE802E),
          color: Colors.purple,
          borderRadius: BorderRadius.circular(20),
          // boxShadow: [
          //   const BoxShadow(
          //       color: Color(0xFFDE802E),
          //       blurRadius: 20,
          //       spreadRadius: 0.8,
          //       blurStyle: BlurStyle.inner)
          // ]),
          gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [Colors.purpleAccent, Colors.indigo])),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent.withOpacity(0.1)),
                        child: const Icon(
                          Iconsax.security_user4,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "TOTAL PAYMENT",
                        style: GoogleFonts.openSans(
                            color: Colors.white60,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "28",
                        style: GoogleFonts.roboto(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Latest :",
                          style: GoogleFonts.openSans(
                              color: Colors.white60,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "John Doe ",
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 10,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.add,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}














// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:iconsax/iconsax.dart';

// class TotalOutingCard extends StatelessWidget {
//   const TotalOutingCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 250,
//       width: 190,
//       decoration: BoxDecoration(
//           color: Colors.orange,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: const [
//             BoxShadow(
//                 color: Color(0xFFFFB400),
//                 blurRadius: 20,
//                 spreadRadius: 0.8,
//                 blurStyle: BlurStyle.inner)
//           ],
//           gradient: const LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color(0xFFFFB400),
//                 // Color.fromARGB(255, 244, 94, 8),
//                 Colors.redAccent
//               ])),
//       child: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         height: 50,
//                         width: 50,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.transparent.withOpacity(0.1)),
//                         child: const Icon(
//                           Iconsax.clock,
//                           size: 30,
//                           color: Colors.white,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "TOTAL OUTSTANDING",
//                         style: GoogleFonts.openSans(
//                             color: Colors.white60,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w700),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "\$2500.95",
//                         style: GoogleFonts.roboto(
//                             fontSize: 25,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w700),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Spacer(),
//                 Container(
//                   height: 50,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: Colors.transparent.withOpacity(0.2),
//                       borderRadius: const BorderRadius.only(
//                           bottomLeft: Radius.circular(20),
//                           bottomRight: Radius.circular(20))),
//                   child: Center(
//                       child: Text(
//                     "USD",
//                     style: GoogleFonts.openSans(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w700),
//                   )),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             top: 0,
//             right: 10,
//             child: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   CupertinoIcons.add,
//                   color: Colors.white,
//                 )),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TotalClientCard extends StatelessWidget {
//   const TotalClientCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 250,
//       width: 190,
//       decoration: BoxDecoration(
//           // color: Color(0xFFDE802E),
//           color: const Color.fromARGB(255, 70, 211, 197),
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: const [
//             BoxShadow(
//                 color: Color(0xFF167EFF),
//                 blurRadius: 20,
//                 spreadRadius: 0.8,
//                 blurStyle: BlurStyle.inner)
//           ],
//           gradient: const LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [Color(0xFF167EFF), Color.fromARGB(255, 228, 101, 27)])),
//       child: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         height: 50,
//                         width: 50,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.transparent.withOpacity(0.1)),
//                         child: const Icon(
//                           Iconsax.personalcard,
//                           size: 30,
//                           color: Colors.white,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "TOTAL CLIENT",
//                         style: GoogleFonts.openSans(
//                             color: Colors.white60,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w700),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "103",
//                         style: GoogleFonts.roboto(
//                             fontSize: 25,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w700),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Spacer(),
//                 Container(
//                   height: 50,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                       // color: Colors.transparent.withOpacity(0.2),
//                       borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(20),
//                           bottomRight: Radius.circular(20))),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Latest :",
//                           style: GoogleFonts.openSans(
//                               color: Colors.white60,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w700),
//                         ),
//                         Text(
//                           "Rajeev Chauhan ",
//                           style: GoogleFonts.openSans(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w700),
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 1,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             top: 0,
//             right: 10,
//             child: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   CupertinoIcons.add,
//                   color: Colors.white,
//                 )),
//           )
//         ],
//       ),
//     );
//   }
// }

// class AddProductCard extends StatelessWidget {
//   const AddProductCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 250,
//       width: 190,
//       decoration: BoxDecoration(
//           // color: Color(0xFFDE802E),
//           color: Colors.green,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: const [
//             BoxShadow(
//                 color: Color.fromARGB(255, 224, 79, 108),
//                 blurRadius: 20,
//                 spreadRadius: 0.8,
//                 blurStyle: BlurStyle.inner)
//           ],
//           gradient: const LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [Color(0xFF6FD4BF), Color.fromARGB(255, 246, 28, 72)])),
//       child: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         height: 50,
//                         width: 50,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.transparent.withOpacity(0.1)),
//                         child: const Icon(
//                           Iconsax.menu,
//                           size: 30,
//                           color: Colors.white,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "TOTAL PRODUCT",
//                         style: GoogleFonts.openSans(
//                             color: Colors.white60,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w700),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "49",
//                         style: GoogleFonts.roboto(
//                             fontSize: 25,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w700),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Spacer(),
//                 Container(
//                   height: 50,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                       // color: Colors.transparent.withOpacity(0.2),

//                       borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(20),
//                           bottomRight: Radius.circular(20))),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Lastest :",
//                           style: GoogleFonts.openSans(
//                               color: Colors.white60,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w700),
//                         ),
//                         Text(
//                           "BreadBoard ",
//                           style: GoogleFonts.openSans(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w700),
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 1,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             top: 0,
//             right: 10,
//             child: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   CupertinoIcons.add,
//                   color: Colors.white,
//                 )),
//           )
//         ],
//       ),
//     );
//   }
// }

// class TotalPaymentCard extends StatelessWidget {
//   const TotalPaymentCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 250,
//       width: 190,
//       decoration: BoxDecoration(
//           // color: Color(0xFFDE802E),
//           color: Colors.purple,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: const [
//             BoxShadow(
//                 color: Colors.purpleAccent,
//                 blurRadius: 20,
//                 spreadRadius: 0.8,
//                 blurStyle: BlurStyle.inner)
//           ],
//           gradient: const LinearGradient(
//               begin: Alignment.topRight,
//               end: Alignment.bottomLeft,
//               colors: [Colors.purpleAccent, Colors.grey])),
//       child: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         height: 50,
//                         width: 50,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.transparent.withOpacity(0.1)),
//                         child: const Icon(
//                           Iconsax.security_user4,
//                           size: 30,
//                           color: Colors.white,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "TOTAL PAYMENT",
//                         style: GoogleFonts.openSans(
//                             color: Colors.white60,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w700),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "28",
//                         style: GoogleFonts.roboto(
//                             fontSize: 25,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w700),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Spacer(),
//                 Container(
//                   height: 50,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(20),
//                           bottomRight: Radius.circular(20))),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Latest :",
//                           style: GoogleFonts.openSans(
//                               color: Colors.white60,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w700),
//                         ),
//                         Text(
//                           "John Doe ",
//                           style: GoogleFonts.openSans(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w700),
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 1,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             top: 0,
//             right: 10,
//             child: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   CupertinoIcons.add,
//                   color: Colors.white,
//                 )),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      forceMaterialTransparency: true,
      elevation: 0,
      toolbarHeight: 100,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("DashBoard",
              style: GoogleFonts.openSans(
                  fontSize: 30, fontWeight: FontWeight.bold)),
          Text("Aditya Chauhan",
              style: GoogleFonts.openSans(
                  fontSize: 15, fontWeight: FontWeight.w700)),
        ],
      ),
      actions: [
        Container(
          clipBehavior: Clip.antiAlias,
          height: 60,
          width: 60,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            "assets/images/profile_1.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

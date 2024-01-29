import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});

  @override
  SliverAppBar build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      scrolledUnderElevation: 0,
      centerTitle: false,
      elevation: 0,
      toolbarHeight: 100,
      leading: const Icon(
        Iconsax.menu5,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Blaze Invoices",
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
          decoration: const BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
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

  // @override
  // Size get preferredSize => const Size.fromHeight(80);
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCupertinoButton extends StatelessWidget {
  const CustomCupertinoButton(
      {super.key,
      required this.image,
      required this.onpress,
      required this.text});
  final String image;
  final String text;
  final Function()? onpress;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        minSize: double.minPositive,
        padding: EdgeInsets.zero,
        borderRadius: BorderRadius.circular(20),
        disabledColor: Colors.transparent,
        alignment: Alignment.center,
        pressedOpacity: 0.6,
        child: SizedBox(
          height: 50,
          width: 190,
          child: Row(
            children: [
              const Spacer(),
              Image.asset(
                image,
                // scale: 20,
                height: 30,
                width: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(text,
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.w700)),
              const Spacer()
            ],
          ),
        ),
        onPressed: () {
          onpress!();
        });
  }
}

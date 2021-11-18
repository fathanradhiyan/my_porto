import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:my_porto/const/colors.dart';

class ExperienceEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final themeChange = Provider.of<DarkThemeProvider>(context);
    return FittedBox(
      child: Container(
        child: Row(
          children: [
            SizedBox(
              height: 160,
              width: 160,
              child: LottieBuilder.asset('assets/images/no_experience.json'),
            ),
            SizedBox(width: 10,),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore more!!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.mcLaren(
                      color: Theme.of(context).textSelectionColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(text: TextSpan(
                  style: GoogleFonts.mcLaren(
                      color: Theme.of(context).textSelectionColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(text: 'The Expert ', style: GoogleFonts.mcLaren(color: ColorsConsts.flamingo)),
                    TextSpan(text: 'in\n anything was\n once '),
                    TextSpan(text: 'a Beginner', style: GoogleFonts.mcLaren(color: ColorsConsts.flamingo)),
                  ]
                )),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "- Helen Hayes",
                    style: GoogleFonts.mcLaren(
                        color: Theme.of(context).textSelectionColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

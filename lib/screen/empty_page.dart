import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:my_porto/const/colors.dart';
import 'package:my_porto/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   margin: EdgeInsets.only(top: 50),
            //   width: double.infinity,
            //   height: MediaQuery.of(context).size.height * 0.4,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: AssetImage('assets/images/no_folder.png'),
            //           scale: 3.0)),
            // ),
            SizedBox(
              width: 250,
              height: MediaQuery.of(context).size.height * 0.4,
              child: LottieBuilder.asset('assets/images/no_data.json'),
            ),
            Text(
              "Data is Empty",
              textAlign: TextAlign.center,
              style: GoogleFonts.mcLaren(
                  color: Theme.of(context).textSelectionColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Looks like you didn\'t add \n anything to your profile yet",
              textAlign: TextAlign.center,
              style: GoogleFonts.mcLaren(
                  color: themeChange.darkTheme? Theme.of(context).disabledColor : Theme.of(context).textSelectionColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 50,),
            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.06,
              child: RaisedButton(
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: ColorsConsts.flamingo),
                  ),
                  color: ColorsConsts.flamingo,
                  child: Text(
                    "Add New".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.mcLaren(
                        color: ColorsConsts.cream, //themeChange.darkTheme? Theme.of(context).disabledColor : Theme.of(context).textSelectionColor
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

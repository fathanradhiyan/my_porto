import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/const/colors.dart';
import 'package:my_porto/provider/dark_theme_provider.dart';
import 'package:my_porto/widget/bottom_bar_widget.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: 200,
            image: AssetImage(themeChange.darkTheme
                ? 'assets/images/logo_dark.png'
                : 'assets/images/logo_light.png'),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: ColorsConsts.flamingo)
            ),
            child: TextField(
                style: GoogleFonts.lato(fontSize: 14, color: themeChange.darkTheme? ColorsConsts.cream : ColorsConsts.licorice),
                controller: emailController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.poppins(color: Colors.grey),
                    hintText: "Input email address!"
                )
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: ColorsConsts.flamingo)
            ),
            child: TextField(
              style: GoogleFonts.lato(fontSize: 14, color: ColorsConsts.licorice),
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.poppins(color: Colors.grey),
                    hintText: "Input password!"
                ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: RaisedButton(
              onPressed: () {
                Get.to(BottomBarWidget());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: ColorsConsts.flamingo),
              ),
              color: ColorsConsts.flamingo,
              child: Text(
                "Login".toUpperCase(),
                textAlign: TextAlign.center,
                style: GoogleFonts.mcLaren(
                    color: ColorsConsts.cream, //themeChange.darkTheme? Theme.of(context).disabledColor : Theme.of(context).textSelectionColor
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}

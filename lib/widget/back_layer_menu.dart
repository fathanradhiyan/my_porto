import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/const/colors.dart';
import 'package:my_porto/widget/language_bar_widget.dart';
import 'package:my_porto/widget/operating_skill_widget.dart';
import 'package:my_porto/widget/skill_bar_widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BackLayerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text('Professional Skills',
                style: GoogleFonts.raleway(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        blurRadius: 4,
                        // offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  // clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SkillBarWidget(barPercentage: 0.9, barName: 'Programming',),
                    SkillBarWidget(barPercentage: 0.95, barName: 'Flutter',),
                    SkillBarWidget(barPercentage: 0.75, barName: 'Android Native',),
                    SkillBarWidget(barPercentage: 0.65, barName: 'Web Development',),
                    SkillBarWidget(barPercentage: 0.8, barName: 'Problem Solving',),
                    SkillBarWidget(barPercentage: 0.75, barName: 'Public Speaking',),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text('Additional Skills',
                style: GoogleFonts.raleway(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
          ),
          Container(
            height: size.height * 0.18,
            width: double.infinity,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OperatingSkillWidget(percentage: 0.5, logoTitle: 'Photoshop', logoUrl: 'assets/images/skills_1.png',),
                SizedBox(
                  width: 15,
                ),
                OperatingSkillWidget(percentage: 0.9, logoTitle: 'Office', logoUrl: 'assets/images/skills_2.png',),
                SizedBox(
                  width: 15,
                ),
                OperatingSkillWidget(percentage: 0.5, logoTitle: 'Filmora', logoUrl: 'assets/images/skills_3.png',),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text('Language Skills',
                style: GoogleFonts.raleway(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
          ),
          LanguageBarWidget(percentage: 0.9, logoUrl: 'assets/images/language_1.jpg', logoTitle: "English",),
          SizedBox(
            height: 5,
          ),
          LanguageBarWidget(percentage: 0.8, logoUrl: 'assets/images/language_2.png', logoTitle: "Arabic",),
          SizedBox(
            height: 5,
          ),
          LanguageBarWidget(percentage: 0.3, logoUrl: 'assets/images/language_3.jpg', logoTitle: "Germany",),
        ],
      ),
    );
  }
}

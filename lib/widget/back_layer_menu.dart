import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/const/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BackLayerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: LinearPercentIndicator(
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        width: MediaQuery.of(context).size.width * 0.6,
                        animation: true,
                        lineHeight: 12.0,
                        animationDuration: 1500,
                        percent: 0.9,
                        center: Text(
                          "Programming",
                          style: GoogleFonts.raleway(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 9),
                        ),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: ColorsConsts.flamingo,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: LinearPercentIndicator(
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        width: MediaQuery.of(context).size.width * 0.6,
                        animation: true,
                        lineHeight: 12.0,
                        animationDuration: 1500,
                        percent: 0.85,
                        center: Text(
                          "Flutter",
                          style: GoogleFonts.raleway(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 9),
                        ),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: ColorsConsts.flamingo,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: LinearPercentIndicator(
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        width: MediaQuery.of(context).size.width * 0.6,
                        animation: true,
                        lineHeight: 12.0,
                        animationDuration: 1500,
                        percent: 0.85,
                        center: Text(
                          "Android Native",
                          style: GoogleFonts.raleway(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 9),
                        ),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: ColorsConsts.flamingo,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: LinearPercentIndicator(
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        width: MediaQuery.of(context).size.width * 0.6,
                        animation: true,
                        lineHeight: 12.0,
                        animationDuration: 1500,
                        percent: 0.65,
                        center: Text(
                          "Web Development",
                          style: GoogleFonts.raleway(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 9),
                        ),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: ColorsConsts.flamingo,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: LinearPercentIndicator(
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        width: MediaQuery.of(context).size.width * 0.6,
                        animation: true,
                        lineHeight: 12.0,
                        animationDuration: 1500,
                        percent: 0.80,
                        center: Text(
                          "Problem Solving",
                          style: GoogleFonts.raleway(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 9),
                        ),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: ColorsConsts.flamingo,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: LinearPercentIndicator(
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        width: MediaQuery.of(context).size.width * 0.6,
                        animation: true,
                        lineHeight: 12.0,
                        animationDuration: 1500,
                        percent: 0.75,
                        center: Text(
                          "Public Speaking",
                          style: GoogleFonts.raleway(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 9),
                        ),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: ColorsConsts.flamingo,
                      ),
                    ),
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
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 10.0,
                  animation: true,
                  animationDuration: 1500,
                  percent: 0.5,
                  center: Image(
                    height: 45,
                    width: 45,
                    image: AssetImage('assets/images/skills_1.png'),
                  ),
                  footer: Text("Photoshop",
                      style: GoogleFonts.raleway(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontSize: 14)),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: ColorsConsts.flamingo,
                ),
                SizedBox(width: 20,),
                CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 10.0,
                  animation: true,
                  animationDuration: 1500,
                  percent: 0.9,
                  center: Image(
                    height: 45,
                    width: 45,
                    image: AssetImage('assets/images/skills_2.png'),
                  ),
                  footer: Text("Office",
                      style: GoogleFonts.raleway(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontSize: 14)),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: ColorsConsts.flamingo,
                ),
                SizedBox(width: 20,),
                CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 10.0,
                  animation: true,
                  animationDuration: 1500,
                  percent: 0.5,
                  center: Image(
                    height: 35,
                    width: 35,
                    image: AssetImage('assets/images/skills_3.png'),
                  ),
                  footer: Text("Filmora",
                      style: GoogleFonts.raleway(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontSize: 14)),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: ColorsConsts.flamingo,
                ),
              ],
            ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text('Language Skills',
                style: GoogleFonts.raleway(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
          ),
          Row(
            children: [
              Image(
                width: 30,
                height: 20,
                image: AssetImage('assets/images/language_1.jpg'),),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: LinearPercentIndicator(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  width: MediaQuery.of(context).size.width * 0.8,
                  animation: true,
                  lineHeight: 12.0,
                  animationDuration: 1500,
                  percent: 0.9,
                  center: Text(
                    "English",
                    style: GoogleFonts.raleway(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 9),
                  ),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: ColorsConsts.flamingo,
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Image(
                width: 30,
                height: 20,
                image: AssetImage('assets/images/language_2.png'),),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: LinearPercentIndicator(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  width: MediaQuery.of(context).size.width * 0.8,
                  animation: true,
                  lineHeight: 12.0,
                  animationDuration: 1500,
                  percent: 0.8,
                  center: Text(
                    "Arabic",
                    style: GoogleFonts.raleway(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 9),
                  ),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: ColorsConsts.flamingo,
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Image(
                width: 30,
                height: 20,
                image: AssetImage('assets/images/language_3.jpg'),),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: LinearPercentIndicator(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  width: MediaQuery.of(context).size.width * 0.8,
                  animation: true,
                  lineHeight: 12.0,
                  animationDuration: 1500,
                  percent: 0.3,
                  center: Text(
                    "Germany",
                    style: GoogleFonts.raleway(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 9),
                  ),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: ColorsConsts.flamingo,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

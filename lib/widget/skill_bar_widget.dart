import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/const/colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillBarWidget extends StatefulWidget {
  final String? barName;
  final double barPercentage;
  const SkillBarWidget({Key? key, this.barName, required this.barPercentage}) : super(key: key);

  @override
  _SkillBarWidgetState createState() => _SkillBarWidgetState();
}

class _SkillBarWidgetState extends State<SkillBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: LinearPercentIndicator(
        barRadius: Radius.circular(8),
        backgroundColor: Colors.grey.withOpacity(0.3),
        width: MediaQuery.of(context).size.width * 0.6,
        animation: true,
        lineHeight: 12.0,
        animationDuration: 1500,
        percent: widget.barPercentage,
        center: Text(
          widget.barName!,
          style: GoogleFonts.raleway(
              color: Theme.of(context).scaffoldBackgroundColor,
              fontSize: 9),
        ),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: ColorsConsts.flamingo,
      ),
    );
  }
}

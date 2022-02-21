import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/const/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class OperatingSkillWidget extends StatefulWidget {
  final String? logoUrl;
  final String? logoTitle;
  final double percentage;
  const OperatingSkillWidget({Key? key, this.logoUrl, this.logoTitle, required this.percentage}) : super(key: key);

  @override
  State<OperatingSkillWidget> createState() => _OperatingSkillWidgetState();
}

class _OperatingSkillWidgetState extends State<OperatingSkillWidget> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 50.0,
      lineWidth: 10.0,
      animation: true,
      animationDuration: 1500,
      percent: widget.percentage,
      center: Image(
        height: 45,
        width: 45,
        image: AssetImage(widget.logoUrl!),
      ),
      footer: Text(widget.logoTitle!,
          style: GoogleFonts.raleway(
              color: Theme.of(context).scaffoldBackgroundColor,
              fontSize: 14)),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: ColorsConsts.flamingo,
    );
  }
}

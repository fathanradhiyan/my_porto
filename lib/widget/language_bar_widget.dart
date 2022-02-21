import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/const/colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LanguageBarWidget extends StatefulWidget {
  final String? logoUrl;
  final String? logoTitle;
  final double percentage;
  const LanguageBarWidget({Key? key, this.logoUrl, this.logoTitle, required this.percentage}) : super(key: key);

  @override
  _LanguageBarWidgetState createState() => _LanguageBarWidgetState();
}

class _LanguageBarWidgetState extends State<LanguageBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          width: 30,
          height: 20,
          image: AssetImage(widget.logoUrl!),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 5),
          child: LinearPercentIndicator(
            barRadius: Radius.circular(8),
            backgroundColor: Colors.grey.withOpacity(0.3),
            width: MediaQuery.of(context).size.width * 0.8,
            animation: true,
            lineHeight: 12.0,
            animationDuration: 1500,
            percent: widget.percentage,
            center: Text(
              widget.logoTitle!,
              style: GoogleFonts.raleway(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  fontSize: 9),
            ),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: ColorsConsts.flamingo,
          ),
        ),
      ],
    );
  }
}

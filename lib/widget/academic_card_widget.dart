import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/const/colors.dart';
import 'package:my_porto/models/academics_model.dart';
import 'package:provider/provider.dart';

class AcademicCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final academicAttributes = Provider.of<AcademicsModel>(context);
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
          // image: DecorationImage(
          //   alignment: Alignment.center,
          //   image: AssetImage('assets/images/loading.png')
          // ),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black12)
          ]),
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                    image: NetworkImage(academicAttributes.imageUrl!),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12, 12, 12, 6),
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  academicAttributes.academyGrade!,
                  style: GoogleFonts.raleway(
                    color: ColorsConsts.licorice,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    academicAttributes.academyName!.toUpperCase(),
                    style: GoogleFonts.lato(
                        color: ColorsConsts.licorice,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  academicAttributes.academyDomicile!,
                  style: GoogleFonts.raleway(
                      color: ColorsConsts.licorice,
                      fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  academicAttributes.academyDegree!,
                  style: GoogleFonts.raleway(
                      color: ColorsConsts.licorice,
                      fontSize: 14),
                ),
                SizedBox(height: 15,),
                Text(
                  'Graduate year : ${academicAttributes.graduateYear}',
                  style: GoogleFonts.raleway(
                      color: ColorsConsts.licorice,
                      fontSize: 14),
                ),
                SizedBox(height: 30,),
                Text(
                  academicAttributes.academyAddress!,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.raleway(
                      color: Colors.grey,
                      fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

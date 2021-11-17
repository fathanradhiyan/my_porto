import 'package:flutter/cupertino.dart';

class AcademicsModel with ChangeNotifier {
  final String id;
  final String academyName;
  final String academyDomicile;
  String academyGrade = 'SD';
  final String academyDegree;
  final String academyAddress;
  final String graduateYear;
  final String contactInfo;
  final String imageUrl;

  AcademicsModel( {
    this.id,
    this.academyName,
    this.academyGrade,
    this.academyDegree,
    this.graduateYear,
    this.academyDomicile,
    this.academyAddress,
    this.contactInfo,
    this.imageUrl,
  });
}

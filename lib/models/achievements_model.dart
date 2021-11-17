import 'package:flutter/cupertino.dart';

class AchievementsModel with ChangeNotifier {
  final String id;
  final String title;
  final String verifiedBy;
  final String releaseDate;
  final String expireDate;
  final String imageUrl;

  AchievementsModel(
      {this.id,
      this.title,
      this.verifiedBy,
      this.releaseDate,
      this.expireDate,
      this.imageUrl});
}

import 'package:flutter/cupertino.dart';

class ExperiencesModel with ChangeNotifier {
  final String? id;
  final String? imageUrl;
  final String? workspaceName;
  final String? roleName;
  final String? startDate;
  final String? endDate;

  ExperiencesModel(
      {this.id,
      this.imageUrl,
      this.workspaceName,
      this.roleName,
      this.startDate,
      this.endDate});
}


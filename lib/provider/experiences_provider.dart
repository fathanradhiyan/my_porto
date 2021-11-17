import 'package:flutter/cupertino.dart';
import 'package:my_porto/models/experiences_model.dart';

class ExperiencesProvider with ChangeNotifier{
  List<ExperiencesModel> _experiences = [
    ExperiencesModel(
      id: 'experience02',
      imageUrl: 'assets/images/sdd_logo.png',
      workspaceName: 'PT. Swadharma Duta Data',
      roleName: 'Software Engineer',
      startDate: 'May 2021',
      endDate: 'Current',
    ),
    ExperiencesModel(
        id: 'experience01',
        imageUrl: 'assets/images/gki_logo.png',
        workspaceName: 'PT. Graha Karya Informasi',
        roleName: 'Engineer on Site',
        startDate: 'September 2018',
        endDate: 'October 2018',
    ),
  ];

  List<ExperiencesModel> get experiences {
    return [..._experiences];
  }
}
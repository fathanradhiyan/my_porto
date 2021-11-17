import 'package:flutter/cupertino.dart';

class PortfolioModel with ChangeNotifier {
  final String id;
  final List imageUrl;

  PortfolioModel({this.id, this.imageUrl});
}
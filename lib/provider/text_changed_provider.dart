import 'package:flutter/foundation.dart';

class TextChangedProvider with ChangeNotifier {
  bool _isTextChanged = true;

  bool get isTextChanged => _isTextChanged;

  set isTextChanged(bool value){
    _isTextChanged = value;
    notifyListeners();
  }
}
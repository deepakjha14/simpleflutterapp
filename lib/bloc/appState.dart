import 'package:flutter/foundation.dart';

class FormModel extends ChangeNotifier{
  Map<String, dynamic> formValues = {
                                      "name":"",
                                      "surname":"",
                                      "artist":"",
                                      "location":"",
                                      "genre":""
                                    };
  void addFormValues(Map<String, dynamic> inputFormValues){
    formValues = inputFormValues;
    notifyListeners();
  }
  
}
import 'package:equatable/equatable.dart';
import '../models/formModel.dart';

enum FormActions{submit, reset}

abstract class FormblocEvent extends Equatable {
  FormModel form;
  FormActions eventType;

  FormblocEvent.submit(FormModel submitForm){
    this.eventType = FormActions.submit;
    this.form = submitForm;
  }

  FormblocEvent.reset(){
    this.eventType = FormActions.reset;
    //this.form = new Map<String, String>({"":""});
  }
}

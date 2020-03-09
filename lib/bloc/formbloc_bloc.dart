
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/formModel.dart';


part 'formbloc_state.dart';

enum FormActions{submit, reset}

// part 'formbloc_event.dart';


class FormblocBloc extends Bloc<FormActions, FormblocState> {
  @override
  FormblocState get initialState => FormblocInitial();

  @override
  Stream<FormblocState> mapEventToState(
    FormActions event,
  ) async* {
    switch(event){
      case FormActions.submit:
      print('inside the form submit action $event and state is $state');
        yield state;
        break;
      case FormActions.reset:
      print('inside the form reset action $event');
        yield new FormblocInitial();
        break;
      default:
      throw Exception("Exception not found $event");
    }
  }
}

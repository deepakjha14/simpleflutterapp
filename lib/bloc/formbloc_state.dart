part of 'formbloc_bloc.dart';

abstract class FormblocState extends Equatable {
  const FormblocState();
}

class FormblocInitial extends FormblocState {
  @override
  List<Object> get props => [];
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'details_state.dart';

class DetailsCubitDartCubit extends Cubit<DetailsCubitDartState> {
  DetailsCubitDartCubit() : super(DetailsCubitDartInitial());
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'submittedscreen_state.dart';

class SubmittedscreenCubit extends Cubit<SubmittedscreenState> {
  SubmittedscreenCubit() : super(SubmittedscreenInitial());
}

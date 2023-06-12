import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'registerscreen_state.dart';

class RegisterscreenCubit extends Cubit<RegisterscreenState> {
  RegisterscreenCubit() : super(RegisterscreenInitial());
}

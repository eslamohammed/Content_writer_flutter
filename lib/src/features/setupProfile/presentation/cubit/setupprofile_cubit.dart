import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'setupprofile_state.dart';

class SetupprofileCubit extends Cubit<SetupprofileState> {
  SetupprofileCubit() : super(SetupprofileInitial());
}

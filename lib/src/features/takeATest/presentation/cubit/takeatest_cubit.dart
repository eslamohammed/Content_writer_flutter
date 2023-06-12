import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'takeatest_state.dart';

class TakeatestCubit extends Cubit<TakeatestState> {
  TakeatestCubit() : super(TakeatestInitial());
}

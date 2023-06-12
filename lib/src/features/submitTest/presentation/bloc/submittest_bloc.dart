import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'submittest_event.dart';
part 'submittest_state.dart';

class SubmittestBloc extends Bloc<SubmittestEvent, SubmittestState> {
  SubmittestBloc() : super(SubmittestInitial()) {
    on<SubmittestEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:skywalker_tools/app/res/export.dart';

part 'global_event.dart';

part 'global_state.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc()
      : super(GlobalInitial(fontFamily: '', theme: ThemeLight(), navIndex: 1)) {
    on<GlobalEvent>((event, emit) {});
  }
}

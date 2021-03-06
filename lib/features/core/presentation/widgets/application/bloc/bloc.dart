import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/application/bloc/data.dart';
import 'package:rxdart/rxdart.dart';

class ApplicationBloc extends HydratedBloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc() : super(ApplicationState.state());

  @override
  ApplicationState fromJson(Map<String, dynamic> json) => ApplicationState.fromJson(json);

  @override
  Stream<Transition<ApplicationEvent, ApplicationState>> transformEvents(
      Stream<ApplicationEvent> events, transitionFn) {
    return super.transformEvents(events, transitionFn).throttleTime(Duration(milliseconds: 35));
  }

  @override
  Stream<ApplicationState> mapEventToState(ApplicationEvent event) async* {
    yield* event.maybeMap(
      color: (value) => Stream.value(state.copyWith(accent: value.accent)),
      orElse: () => Stream.empty(),
    );
  }

  @override
  Map<String, dynamic> toJson(ApplicationState state) => state.toJson();
}

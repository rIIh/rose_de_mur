import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:koin/koin.dart';
import 'package:koin_flutter/koin_flutter.dart';
import 'package:rose_de_mur/features/core/presentation/router/router.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/application/bloc/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/application/bloc/data.dart';
import 'package:rose_de_mur/modules/features/core/module.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> with KoinComponentMixin, ScopeStateMixin {
  Completer initialization = Completer();
  SimpleRouter _router;
  ApplicationBloc _bloc;
  ThemeData _theme;

  @override
  void initState() {
    startKoin((app) => app.modules(
          [
            CoreModule.create(),
          ],
        ));
    _router = get();
    _theme = get();
    initialize().then((value) => setState(() => initialization.complete()));
    super.initState();
  }

  Future initialize() async {
    HydratedBloc.storage = await HydratedStorage.build();
    _bloc = currentScope.get();
  }

  @override
  Widget build(BuildContext context) {
    if (initialization.isCompleted == false) {
      return Container();
    }
    return BlocProvider.value(
      value: _bloc,
      child: BlocBuilder<ApplicationBloc, ApplicationState>(
        cubit: _bloc,
        builder: (context, state) => MaterialApp(
          theme: _theme.copyWith(accentColor: state.accent),
          routes: _router.routes,
          builder: (context, child) => Portal(
            child: child,
          ),
          initialRoute: _router.initialRoute,
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

abstract class Routes {
  Routes._();

  static const plants = 'plants';
  static const plant = 'plant';
  static const supplies = 'supplies';
  static const supply = 'supply';
}

class SimpleRouter {
  final Map<String, WidgetBuilder> routes;

  final String initialRoute;

  SimpleRouter(this.routes, {this.initialRoute});
}

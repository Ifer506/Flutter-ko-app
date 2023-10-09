import 'package:applications/view/arithmetic_view.dart';
import 'package:applications/view/dashboard_view.dart';
import 'package:applications/view/output_view.dart';
import 'package:applications/view/random_view.dart';

class AppRoute {
  AppRoute._();

  static const String dashboardRoute = '/';
  static const String arithmeticRoute = '/arithmetic';
  static const String outputRoute = '/output';
  static const String randomRoute = '/random';

  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashBoard(),
      outputRoute: (context) => const Output(),
      arithmeticRoute: (context) => const Arithmetic(),
      randomRoute: (context) => const Randowm(),
    };
  }
}

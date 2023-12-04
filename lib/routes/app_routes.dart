import 'package:applications/view/arithmetic_view.dart';
import 'package:applications/view/container_view.dart';
import 'package:applications/view/dashboard_view.dart';
import 'package:applications/view/expanded_view.dart';
import 'package:applications/view/listview_view.dart';
import 'package:applications/view/output_listview_self.dart';
import 'package:applications/view/output_view.dart';
import 'package:applications/view/random_view.dart';

import '../view/image_view.dart';

class AppRoute {
  AppRoute._();

  static const String dashboardRoute = '/';
  static const String arithmeticRoute = '/arithmetic';
  static const String outputRoute = '/output';
  static const String randomRoute = '/random';
  static const String containerRoute = '/container';
  static const String imageRoute = '/image';
  static const String listViewSelf = '/listViewSelf';
  static const String OutputlistViewSelf = '/OutputlistViewSelf';
  static const String expanded = '/expanded';

  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashBoard(),
      outputRoute: (context) => const Output(),
      arithmeticRoute: (context) => const Arithmetic(),
      randomRoute: (context) => const Randowm(),
      containerRoute: (context) => const ContainerView(),
      imageRoute: (context) => const ImageView(),
      listViewSelf: (context) => const ListViews(),
      OutputlistViewSelf: (context) => const DisplayOutputList(),
      expanded: (context) => const ExpandedWidget(),
    };
  }
}

import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.dashboardRoute,
      routes: AppRoute.getApplicationRoute(),
    );
  }
}

import 'package:design_patter_flutter/ui/views/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:design_patter_flutter/app/locator.dart';
import 'app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoginView(),
      // initialRoute: Routes.startupViewRoute,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:design_patter_flutter/ui/views/login/login_view.dart';
import 'package:design_patter_flutter/ui/views/post/post_view.dart';

abstract class Routes {
  static const loginViewRoute = '/';
  static const postViewRoute = '/post-view-route';
  static const all = {
    loginViewRoute,
    postViewRoute,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.loginViewRoute:
        if (hasInvalidArgs<LoginViewArguments>(args)) {
          return misTypedArgsRoute<LoginViewArguments>(args);
        }
        final typedArgs = args as LoginViewArguments ?? LoginViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginView(key: typedArgs.key),
          settings: settings,
        );
      case Routes.postViewRoute:
        if (hasInvalidArgs<PostViewArguments>(args)) {
          return misTypedArgsRoute<PostViewArguments>(args);
        }
        final typedArgs = args as PostViewArguments ?? PostViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => PostView(key: typedArgs.key),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//LoginView arguments holder class
class LoginViewArguments {
  final Key key;
  LoginViewArguments({this.key});
}

//PostView arguments holder class
class PostViewArguments {
  final Key key;
  PostViewArguments({this.key});
}

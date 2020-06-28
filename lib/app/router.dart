import 'package:auto_route/auto_route_annotations.dart';
import 'package:design_patter_flutter/ui/views/login/login_view.dart';
import 'package:design_patter_flutter/ui/views/post/post_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  LoginView loginViewRoute;
  PostsView postViewRoute;
}

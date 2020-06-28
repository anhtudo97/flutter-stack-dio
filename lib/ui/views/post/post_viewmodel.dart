import 'package:design_patter_flutter/datamodels/post.dart';
import 'package:design_patter_flutter/app/locator.dart';
import 'package:design_patter_flutter/datamodels/post.dart';
import 'package:design_patter_flutter/services/api.dart';
import 'package:design_patter_flutter/services/posts_service.dart';
import 'package:stacked/stacked.dart';

class PostsViewModel extends FutureViewModel<List<Post>> {
  final _postsService = locator<PostsService>();

  @override
  Future<List<Post>> futureToRun() => _postsService.getPostsForUser(3);
}
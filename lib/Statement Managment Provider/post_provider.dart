import 'package:flutter/cupertino.dart';

import 'Model/post_model.dart';
import 'Repository/post_repository.dart';

class PostProvider with ChangeNotifier{

  Post_Repository post_repository = Post_Repository();
  PostModel postModel = PostModel();

  bool loading = false;
  List<PostModel>? _postList;
  List<PostModel>? get postList=>_postList;

  PostModel? _post;
  PostModel? get post => _post;

  getPostData(context) async {
    loading = true;
    _post = await post_repository!.getSinglePostData(context);
    loading = false;
    notifyListeners();
  }

  getPostListData(context) async {
    loading = true;
    _postList = await post_repository!.getPostListData(context);
    loading = false;
    print(_postList);
    notifyListeners();
  }

}
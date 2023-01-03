import 'package:flutter/cupertino.dart';

import 'Model/post_model.dart';
import 'Repository/post_repository.dart';

class PostProvider with ChangeNotifier{

  Post_Repository post_repository = Post_Repository();

  bool loading = false;

  // One List..
  PostModel? _post;
  PostModel? get post => _post;

  getPostData(context) async {
    loading = true;
    _post = await post_repository!.getSinglePostData(context);
    loading = false;
    notifyListeners();
  }

  // Multi List..
  List<PostModel>? _postList;
  List<PostModel>? get postList=>_postList;

  getPostListData(context) async {
    loading = true;
    _postList = await post_repository!.getPostListData(context);
    loading = false;
    notifyListeners();
  }

}
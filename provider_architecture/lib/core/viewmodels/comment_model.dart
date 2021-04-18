import '../../locator.dart';
import '../enums/viewstates.dart';
import '../models/comment.dart';
import '../services/api.dart';
import 'base_model.dart';

class CommentModel extends BaseModel {
  Api _api = locator<Api>();

  List<Comment> comments;

  Future fetchComments(int postId) async {
    setState(ViewState.Busy);
    comments = await _api.getCommentsForPost(postId);
    setState(ViewState.Idle);
  }
}

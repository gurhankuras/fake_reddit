class PostService {
  Future<Map<String, int>> fetchCommentCountAndUpvotes(String id) async {
    await Future.delayed(Duration(seconds: 2));
    return {
      'commentCount': 10,
      'upvotes': 100,
    };
  }
}

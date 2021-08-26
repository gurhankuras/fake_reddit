class PostService {
  Future<Map<String, int>> fetchCommentCountAndUpvotes(String id) async {
    return {
      'commentCount': 10,
      'upvotes': 100,
    };
  }
}

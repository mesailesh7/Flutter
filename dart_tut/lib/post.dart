class Post {
  final _title = 'new Post';
  var _likes = 0;

  void increamentLikes() {
    _likes++;
    print('Your likes is $_likes');
  }
}

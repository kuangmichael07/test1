import 'package:flutter/cupertino.dart';
import './post.dart';

class Posts with ChangeNotifier {
  List<Post> _items = [
    Post(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      createDate: DateTime.now(),
      // price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Post(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      createDate: DateTime.now(),
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Post(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      createDate: DateTime.now(),
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Post(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      createDate: DateTime.now(),
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  var _showFavoritesOnly = false;

  List<Post> get items {
    return [..._items];
  }

  List<Post> get favoriteItems {
    return _items.where((postItem) => postItem.isFavorite).toList();
  }

  Post findById(String id) {
    return _items.firstWhere((post) => post.id == id);
  }

  void addPost(){
    notifyListeners();
  }

}
import 'package:flutter/foundation.dart';

class Post with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final DateTime createDate;
  final String imageUrl;
  bool isFavorite;

  Post({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.createDate,
    @required this.imageUrl,
    this.isFavorite = false,
  });

  void toggleFavorite(){
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
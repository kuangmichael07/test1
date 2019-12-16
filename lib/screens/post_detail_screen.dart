import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/post_provider.dart';

class PostDetailScreen extends StatelessWidget {
  // final String title;
  // // final double price;

  // PostDetailScreen(this.title);
  static const routeName = '/post-detail';

  @override
  Widget build(BuildContext context) {
    final postId =
        ModalRoute.of(context).settings.arguments as String; // is the id!
    final loadedPost =
        Provider.of<Posts>(context, listen: false).findById(postId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedPost.title),
      ),
    );
  }
}

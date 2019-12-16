import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/post_item.dart';
import '../providers/post_provider.dart';

class PostsGrid extends StatelessWidget {
  final bool showFavs;

  PostsGrid(this.showFavs);

  @override
  Widget build(BuildContext context) {
    final postsData = Provider.of<Posts>(context);
    final posts = showFavs ? postsData.items.where((post) => post.isFavorite).toList() : postsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: posts.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: posts[i],
        child: PostItem(),
          ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../screens/post_detail_screen.dart';

import 'package:provider/provider.dart';
import '../providers/post.dart';

// import '../screens/product_detail_screen.dart';

class PostItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // PostItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final post = Provider.of<Post>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              PostDetailScreen.routeName,
              arguments: post.id,
            );
          },
          child: Image.network(
            post.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Post>(
            builder: (context, post, _) => IconButton(
              icon: Icon(
                  post.isFavorite ? Icons.favorite : Icons.favorite_border),
              color: Theme.of(context).accentColor,
              onPressed: () {
                post.toggleFavorite();
              },
            ),
          ),
          title: Text(
            post.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}

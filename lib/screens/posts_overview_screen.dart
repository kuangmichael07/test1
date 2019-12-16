import 'package:flutter/material.dart';
import 'package:path/path.dart';
import '../widgets/posts_grid.dart';
import 'package:provider/provider.dart';
import '../providers/post_provider.dart';

enum FilterOptions {
  Favorites,
  All,
}

class PostsOverviewScreen extends StatefulWidget {
  
  @override
  _PostsOverviewScreenState createState() => _PostsOverviewScreenState();
}

class _PostsOverviewScreenState extends State<PostsOverviewScreen> {
  var _showOnlyFavorites = false;


  @override
  Widget build(BuildContext context) {
    final postsContainer = Provider.of<Posts>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('New Posts'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if(selectedValue == FilterOptions.Favorites){
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(child: Text('Only Favorites'), value: FilterOptions.Favorites),
              PopupMenuItem(child: Text('Show All'), value: FilterOptions.All),
            ],
          ),          
        ],
      ),
      body: PostsGrid(_showOnlyFavorites),
    );
  }
}



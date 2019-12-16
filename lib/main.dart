import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:walk_with_god/screens/post_detail_screen.dart';
import './screens/posts_overview_screen.dart';
import './screens/login_page.dart';
import './providers/post_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> Posts(),
      child: MaterialApp(
      title: 'Walk With God dev',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
      ),
      home: PostsOverviewScreen(),
      routes: {
        PostDetailScreen.routeName: (context) => PostDetailScreen(),
      }),
    );
  }
}

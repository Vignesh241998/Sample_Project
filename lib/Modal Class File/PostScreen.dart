import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/Modal%20Class%20File/pdrmdl.dart';


class PostsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: postProvider.loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: postProvider.posts.length,
        itemBuilder: (context, index) {
          final post = postProvider.posts[index];
          return ListTile(
            title: Text(post.title),
            subtitle: Text(post.body),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          postProvider.fetchPosts();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}

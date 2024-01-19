import 'package:flutter/material.dart';
//import 'package:instagram_clone/Pages/newpost.dart';
import 'package:instagram_clone/util/bubble_stories.dart';
import 'package:instagram_clone/util/posts.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram'),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //STORIES
          Container(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Bubble(text: 'Your Story'),
                Bubble(text: 'priya16cmbrg'),
                Bubble(text: 'sarthakn..'),
                Bubble(text: '7_yum_pa..'),
                Bubble(text: 'rahul_1.21'),
                Bubble(text: 'nikhilg..'),
                Bubble(text: 'mayanka..'),
                Bubble(text: 'virat.kohli'),
              ],
            ),
          ),
          //POSTS
          post(name: 'Sarthak Nayak'),
        ],
      ),
    );
  }
}

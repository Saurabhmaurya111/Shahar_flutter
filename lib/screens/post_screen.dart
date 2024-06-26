import 'package:flutter/material.dart';
import 'package:shahar/widgets/post_app_bar.dart';
import 'package:shahar/widgets/post_bottom_bar.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const  BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/city6.jpg'),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child:  const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), 
            child: PostAppBar(),
            ),
            bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}

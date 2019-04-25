import 'package:flutter/material.dart';

class CreatePostPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CreatePostPageState();
  }
 }


class _CreatePostPageState extends State<CreatePostPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Image.asset("assets/avatar1.jpg"),),
      
    );
  }
}

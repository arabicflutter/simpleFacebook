import 'package:flutter/material.dart';
import '../models/post.dart';

class HomeTabView extends StatefulWidget {
  List<Post> posts;

  HomeTabView(this.posts);

  @override
  _HomeTabViewState createState() => _HomeTabViewState(this.posts);
}

class _HomeTabViewState extends State<HomeTabView> {
  List<Post> posts;

  _HomeTabViewState(this.posts);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      controller: ScrollController(),
      itemCount: this.posts.length,
      itemBuilder: (BuildContext context, int index) {
        return _PostCell(context, index);
      },
    );
  }

  Widget _PostCell(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/avatar1.jpg"),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "@${posts[index].username}",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: "YanoneKaffeesatz"),
                ),
                Text("50 min ago",
                    style: TextStyle(fontSize: 13.0, color: Colors.grey))
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                customModal(context, index);
              },
            ),
          ),
          Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                posts[index].post,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black, fontSize: 17.0, fontFamily: "Highest"),
              )),
          Divider(
            height: 1.0,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            
              IconButton(
                color: Colors.grey,
                icon: Icon(Icons.thumb_up),
                onPressed: () {},
              ),
              IconButton(
                color: Colors.grey,
                icon: Icon(Icons.room),
                onPressed: () {},
              ),
              IconButton(
                color: Colors.grey,
                icon: Icon(Icons.party_mode),
                onPressed: () {},
              ),
              IconButton(
                color: Colors.grey,
                icon: Icon(Icons.add_comment),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  customModal(BuildContext context, int index) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          int x = 1;
          if (x == 0) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext buildContext, int index) {
              return CommentCell(buildContext, index);
            },
          );
        });
  }

 Widget CommentCell(BuildContext context, int index) {



    return ExpansionTile(
      title: Text(
        "user comments going to be here",
        style: TextStyle(color: Colors.grey, fontSize: 15.0),
      ),
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/avatar1.jpg"),
      ),
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                 
              },
            ),
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.save_alt),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_add),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}

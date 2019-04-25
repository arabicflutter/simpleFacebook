import 'package:flutter/material.dart';
import './home_tabview.dart';
import '../models/post.dart';
import 'create_post.dart';
import '../ui/drawer.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TabController tabController;
  // List<Post> mypost;

  List<Tab> appbarTabs = [
    Tab(
      icon: Icon(Icons.home),
    ),
    Tab(
      icon: Icon(Icons.people_outline),
    ),
    Tab(
      icon: Icon(Icons.video_library),
    ),
    Tab(
      icon: Icon(Icons.notifications),
    ),
    Tab(
      icon: Icon(Icons.menu),
    )
  ];



  @override
  Widget build(BuildContext context) {
    List<Post> mypost = [
      new Post(
          "assets/user.png",
          "ali abdalla",
          "To support your privacy rights our new Privacy Policy describes our use and sharing of cookies with our social media, advertising & analytics ",
          11,
          23),
      new Post("assets/user.png", "Khaled", "do you love me ??", 11, 23),
      new Post("assets/user.png", "JJoy Loop",
          "Customer service BRIEF Domestic registered and COD items:", 11, 23),
      new Post(
          "assets/user.png",
          "Lovelly",
          "Alles rund um Ihre persönliche Post:Briefe, Grußkarten, individuelle Briefmarken, Pakete u.v.m.",
          11,
          23),
      new Post("assets/user.png", "Osama#@",
          "Mit DIALOGPOST, der neuen Generation des Dialogmarketings.", 11, 23),
      new Post("assets/user.png", "khan", "happy", 11, 23),
      new Post("assets/user.png", "yourse", "buy", 11, 23)
    ];
    return DefaultTabController(
        initialIndex: 0,
        length: appbarTabs.length,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              
              Navigator.of(context).pushNamed("/create_post");

            },
          ),
          backgroundColor: Colors.grey,
          drawer: DrawerPage(),
          appBar: AppBar(
            centerTitle: true,
            title: Container(
              padding: EdgeInsets.all(0.0),
              decoration: BoxDecoration(),
              // border: Border(
              //     bottom: BorderSide(color: Colors.blueGrey, width: 1.0))),
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white, fontSize: 18.0),
                autofocus: false,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    // icon: Icon(
                    //   Icons.search,
                    //   color: Colors.white,
                    // ),
                    hintText: "search",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 18.0)),
              ),
            ),

            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.message),
                onPressed: () {},
              )
            ],
            // leading: IconButton(
            //   icon: Icon(Icons.camera_alt),
            //   onPressed: () {},
            // ),
            backgroundColor: Colors.blue,
            brightness: Brightness.dark,
            bottom: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 50),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: <Widget>[
                    TabBar(
                      labelColor: Colors.blue,
                      indicatorColor: Colors.blue,
                      unselectedLabelColor: Colors.grey,
                      tabs: appbarTabs,
                    ),
                  ],
                ),
              ),
            ),
          ),
         

          body: TabBarView(
            children: <Widget>[
              HomeTabView(mypost),
              Text("Users"),
              Text("Watch"),
              Text("Notification"),
              Text("Option"),
            ],
            
          ),
        ));
  }
}

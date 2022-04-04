import 'package:flutter/material.dart';
import 'fall.dart' as Fall;
import 'winter.dart' as Winter;
import 'summer.dart' as Summer;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("MY BEST LIST ANIME",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )),
                  background: Image(
                    image: AssetImage('assets/images/bojji.webp'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.blueAccent,
                    unselectedLabelColor: Colors.blueGrey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.movie), text: "Summer 2021"),
                      new Tab(icon: new Icon(Icons.movie), text: "Fall 2021"),
                      new Tab(icon: new Icon(Icons.movie), text: "Winter 2022"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              new Summer.summer(),
              new Fall.fall(),
              new Winter.winter(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
      color: Colors.white,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

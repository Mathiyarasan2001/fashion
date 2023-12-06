import 'package:fashion/Whitelist.dart';
import 'package:fashion/mybag.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text(
                'Bag More',
                style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 40),
              ),
              centerTitle: true,
              backgroundColor: Color.fromARGB(255, 238, 199, 199),
              bottom: TabBar(
                indicatorColor: Colors.black,
                dividerColor: Colors.grey,
                indicatorWeight: 1.2,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerHeight: 1.3,
                unselectedLabelColor: Colors.black,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    icon: Icon(null),
                    child: Text(
                      'My Bag',
                      style: TextStyle(fontFamily: 'Katibeh', fontSize: 24),
                    ),
                  ),
                  Tab(
                    icon: Icon(null),
                    child: Text(
                      'Whitelist',
                      style: TextStyle(fontFamily: 'Katibeh', fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 238, 199, 199),
                    height: 600,
                    child: TabBarView(children: [Mybag(), Whitelist()]),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

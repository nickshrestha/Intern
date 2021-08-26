import 'package:flutter/material.dart';
import 'package:login/Home.dart';
import 'package:login/sideDrawer.dart';

import 'Power.dart';
import 'Saiyan.dart';
import 'History.dart';

class AppBarScreen extends StatefulWidget {
  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child:
       Scaffold(
            
            appBar: AppBar(
              
              backgroundColor: Colors.black,
              centerTitle: true,
              title: 
              
                 ClipOval(
                child: 
                Image.asset(
                  "assets/images/image.png",
                  height: 100.0,
                  fit: BoxFit.cover,
                  
                ),
              ),
              
                 
              actions: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_none)),
                IconButton( icon: Icon(Icons.search),
                onPressed: () {}
                ),
              ],
               bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.yellow.shade900,
                indicatorWeight: 5,
                tabs: [
                  Tab(icon: Icon(Icons.home), text: 'Home'),
                  Tab(icon: Icon(Icons.bolt_outlined), text: 'Saiyan'),
                  Tab(icon: Icon(Icons.blur_on), text: 'Power'),
                  Tab(icon: Icon(Icons.history), text: 'History'),
                ],
              ),
              elevation: 20,
              titleSpacing: 5,
              
              ),
              drawer: SideDrawer(),
              
             body: TabBarView(children: [
               Home(),
               Saiyan(),
               Power(),
               History(),
              
             ],),
      )  
    );
  }


}

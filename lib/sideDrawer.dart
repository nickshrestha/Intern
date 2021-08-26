import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login/LoginScreen.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              Container(
                child: UserAccountsDrawerHeader(
                  arrowColor: Colors.black,
                  accountName: Text('Nick Shrestha'),
                  accountEmail: Text('lihkinshrestha@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://m.media-amazon.com/images/I/51CeYLr3qCL._AC_SX466_.jpg'),
                  ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () => Navigator.pushReplacementNamed(context, 'Home'),
              ),
              ListTile(
                title: Text('Videos'),
                leading: Icon(Icons.movie),
                onTap: () => Navigator.pushReplacementNamed(context, 'Videos'),
              ),
              ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings),
                onTap: () => Navigator.pushReplacementNamed(context, 'Setting'),
              ),
              ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.red[100]),
            accountName: Text("Sompasong Vongthavone"),
            accountEmail: Text("vongthavone@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/song.jpg'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text("About"),
            onTap: () {
              Navigator.pushNamed(context, "/about");
            },
          ),

          ListTile(
            title: Text("Change Color"),
            onTap: () {
              Navigator.pushNamed(context, "/changecolor");
            },
          ),
        ],
      ),
    );
  }
}

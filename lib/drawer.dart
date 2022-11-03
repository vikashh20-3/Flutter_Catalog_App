import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final imageurl =
      "https://avatars.githubusercontent.com/u/104456893?v=4https://avatars.githubusercontent.com/u/104456893?v=4";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.cyan,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13.0),
              child: DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    accountEmail: Text(
                      "vikash711123@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageurl),
                    ),
                    accountName: Text(
                      "vikash yadav",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              title: Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_2_rounded,
                color: Colors.white,
                size: 30,
              ),
              title: Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

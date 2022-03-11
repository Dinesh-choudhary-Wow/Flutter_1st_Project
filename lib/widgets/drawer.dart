import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final imageUrl = "";
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Dinesh Choudhary", textScaleFactor: 1.6),
                accountEmail: Text(
                  "Dineshchoudhary9108@gmail.com",
                  textScaleFactor: 1.2,
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/dinesh_image1.jpg"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 25,
              ),
              title: Text(
                "Home Page",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_rounded,
                color: Colors.white,
                size: 25,
              ),
              title: Text(
                "View Profile",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.contacts_sharp,
                color: Colors.white,
                size: 25,
              ),
              title: Text(
                "Contact Me",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.info_outline,
                color: Colors.white,
                size: 25,
              ),
              title: Text(
                "About",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

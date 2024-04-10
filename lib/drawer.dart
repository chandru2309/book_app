
import 'package:book_app/page_view_text.dart';
import 'package:book_app/page_view_words.dart';
import 'package:flutter/material.dart';

import 'company_profile.dart';
import 'myprofile.dart';


class DrawerNavigation extends StatefulWidget {
  DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/book.jpg'),
                fit: BoxFit.fitWidth,
              ),
            ),
            accountName: Text(
              'Norman Vincent Peale',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 17
              ),
            ),
            accountEmail: Text(
              'Version 1.0',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/images.jpg'),
              radius: 50,
            ),
          ),
          ListTile(
            title: Text(
              'Quotes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageViewText()));
            },
          ),
          Divider(
            height: 15,
          ),
          ListTile(
            title: Text(
              'Words',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageViewWords()));
            },
          ),
          Divider(
            height: 19,
          ),
          ListTile(
            title: Text(
              'Company Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => CompanyProfile()));
            },
          ),
          Divider(
            height: 17,
          ),
          ListTile(
            title: Text(
              'Developer Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MyProfile()));
            },
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'drawer.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Color(0xFFDA9100),
        title: Text(
          'Personal Profile',
          style: TextStyle(color: Colors.black,fontSize: 25),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/Chandru.jpg'),
                radius:90,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Chandrasekar M',
                  style: TextStyle(fontSize: 31, color: Colors.black,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 22,),
                ),
              ),
              SizedBox(
                height: 40,
                width: 250,
                child: Divider(
                  color: Color(0xFFDA9100),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: Card(
                  color: Color(0xFFDA9100),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,color: Colors.black,),
                    title: Text('+91 63836 69721',style: TextStyle(
                        fontSize: 20,color: Colors.black
                    ),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Color(0xFFDA9100),
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,color: Colors.black,
                    ),
                    title: Text('chandrumurugan2306@gmail.com',
                      style: TextStyle(
                          fontSize: 20,color: Colors.black
                      ),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

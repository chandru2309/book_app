import 'package:flutter/material.dart';

import 'drawer.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Color(0xFFDA9100),
        title: Text(
          'Company Profile',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(

                    backgroundImage: AssetImage("images/tidy.png"),
                    radius: 50,
                    backgroundColor: Colors.white10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Tide Life India Pvt Ltd',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 310,
              child: Divider(
                color: Color(0xFFDA9100),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                color: Color(0xFFDA9100),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                  title: Text(
                    '+91 86103 38291',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                color: Color(0xFFDA9100),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.black),
                  title: Text(
                    'tidylifeindia@gmail.com',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                color: Color(0xFFDA9100),
                child: ListTile(
                  leading: Icon(
                    Icons.location_city,
                    color: Colors.black,
                  ),
                  title: Text(
                    'No.A3, Mahalakshmi Flat,\nSivagami Street,\nNew Perunagalathur.\nChennai-600 026. ',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_2/helpers/enums.dart';
import 'package:flutter_application_2/helpers/shared.dart';
import 'package:flutter_application_2/home_page/home_page.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.purple[400]!,
          Colors.blue!,
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/Elide Lochan.jpeg'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Shared.getString(key: SharedKeys.name),
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),

              Expanded(
                child: ListView(
                  children: [
                    _buildListTile(Icons.location_on, Shared.getString(key: SharedKeys.address)),
                    _buildListTile(Icons.person, Shared.getString(key: SharedKeys.email)),
                    _buildListTile(Icons.phone, Shared.getString(key: SharedKeys.phone)),
                    _buildListTile(
                        Icons.book, 'Computer Science'),

                    _buildListTile(Icons.language, 'Language'),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
      onTap: () {

      },
    );
  }
}
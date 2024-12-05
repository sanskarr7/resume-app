import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient Background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade300, Colors.orange.shade200],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            children: [
              // Top Navigation Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert, color: Colors.black),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/avatar.png'),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Container(
                      height: 20,
                      width: 200,
                      color: Colors.grey[300],
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 20,
                      width: 250,
                      color: Colors.grey[300],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                width: 180,
                height: 180,
                color: Colors.white,
                child: Center(
                  child: Text(
                    "QR CODE",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 24),
              // Social Media Links
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.facebook, color: Colors.blue, size: 30),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.qr_code, color: Colors.black, size: 30),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.facebook, color: Colors.blue, size: 30),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
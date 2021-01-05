import 'dart:ui';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Profile",
            style: TextStyle(color: Colors.white, fontSize: 25)),
        leading: Icon(
          Icons.dehaze_rounded,
          size: 30,
          color: Colors.white,
        ),
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/resim.JPG'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                child: Container(
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        size: 38,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -50,
              child: Stack(
                children: [
                  Card(
                    elevation: 18.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      radius: 74,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage:
                            ExactAssetImage('assets/images/resim.JPG'),
                        radius: 70.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 80.0, bottom: 40),
          child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Zafer Güler",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                          fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, height: 4),
                SizedBox(height: 20),
                Column(
                  children: [
                    Text("Email",
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 20)),
                    SizedBox(height: 8),
                    Text(
                      "0zaferguler@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                          fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, height: 4),
                SizedBox(height: 20),
                Column(
                  children: [
                    Text("City",
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 20)),
                    SizedBox(height: 8),
                    Text("Ordu",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            fontSize: 18)),
                  ],
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, height: 4),
                SizedBox(height: 20),
                Column(
                  children: [
                    Text("Password",
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 20)),
                    SizedBox(
                      height: 8,
                    ),
                    Text("************",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            fontSize: 18)),
                  ],
                ),
                SizedBox(height: 5),
                Divider(thickness: 1, height: 4),
                SizedBox(height: 20),
              ],
            ),
          ),
        )
      ],
    );
  }
}

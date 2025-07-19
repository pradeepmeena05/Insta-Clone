import 'package:blinkit/bottom.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List list = [
      {"img": "assets/images/pimg1.png"},
      {"img": "assets/images/pimg2.png"},
      {"img": "assets/images/pimg3.png"},
      {"img": "assets/images/pimg4.png"},
      {"img": "assets/images/pimg5.png"},
      {"img": "assets/images/pimg6.png"},
      {"img": "assets/images/pimg7.png"},
      {"img": "assets/images/pimg8.png"},
      {"img": "assets/images/pimg9.png"},
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.lock, color: Colors.white, size: 15),
                  SizedBox(width: 4),
                  Text(
                    "Pradeep_Meena",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
              Spacer(), // Pushes the next icon to the right
              Icon(Icons.menu, color: Colors.white),
            ],
          ),
        ),
      ),
      body: Padding( 
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 40,
                  child: ClipOval(child: Image.asset("assets/images/j.png")),
                ),
                Text(
                  "54\nPost",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "834\nFollowers",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "162\nFollowing",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text(
                  "Pradeep Meena",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Android Developer",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Problem Solver",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(221, 53, 52, 52),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color.fromARGB(137, 134, 125, 125),
                      child: ClipOval(
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                    Text("new", style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: ClipOval(
                        child: Image.asset("assets/images/himg.png"),
                      ),
                    ),
                    Text("Friends", style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: ClipOval(
                        child: Image.asset("assets/images/himg1.png"),
                      ),
                    ),
                    Text("Sports", style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: ClipOval(
                        child: Image.asset("assets/images/himg2.png"),
                      ),
                    ),
                    Text("Degine", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/pshape1.png", color: Colors.white),
                Image.asset("assets/images/pshape.png"),
              ],
            ),
            SizedBox(height: 5),
            Expanded(
              child: GridView.builder(
                itemCount: list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                 childAspectRatio: 1
                ),
                itemBuilder: (context, index) {
                  return Image.asset(list[index]["img"],fit: BoxFit.cover,);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Bottom(), 
    );
  }
}

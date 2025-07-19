import 'package:blinkit/bottom.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    List list = [
      {
        "img": "assets/images/m1.png",
        "txt1": "joshua_l",
        "txt2": "Have a nice day, bro!",
        "txt3": ".now",
      },
      {
        "img": "assets/images/m2.png",
        "txt1": "karennne",
        "txt2": "I heard this is a good movie, s…",
        "txt3": ".now",
      },
      {
        "img": "assets/images/m3.png",
        "txt1": "martini_rond",
        "txt2": "Have a nice day, bro!",
        "txt3": ".15m",
      },
      {
        "img": "assets/images/m4.png",
        "txt1": "andrewww_",
        "txt2": "Sounds good 😂😂😂",
        "txt3": ".20m",
      },
      {
        "img": "assets/images/m5.png",
        "txt1": "kiero_d",
        "txt2": "The new design looks cool, b…",
        "txt3": ".25m",
      },
      {
        "img": "assets/images/m6.png",
        "txt1": "maxjacobson",
        "txt2": "Thank you, bro!",
        "txt3": ".1m",
      },
      {
        "img": "assets/images/m7.png",
        "txt1": "jamie.franco",
        "txt2": "Yeap, I'm going to travel in To…",
        "txt3": ".2h",
      },
      {
        "img": "assets/images/m8.png",
        "txt1": "m_humphrey",
        "txt2": "Have a nice day, bro!",
        "txt3": ".3h",
      },
      {
        "img": "assets/images/m5.png",
        "txt1": "joshua_l",
        "txt2": "Have a nice day, bro!",
        "txt3": ".now",
      },
    ];
    return Scaffold(
      backgroundColor: Color(0xFF121212), // dark background

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 23, 22, 22),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.arrow_back, color: Colors.white),
            Text("Pradeep Meena", style: TextStyle(color: Colors.white)),
            Icon(Icons.add, color: Colors.white, size: 30),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: const TextStyle(color: Colors.white),
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  fillColor: Colors.grey[900],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: ClipOval(
                        child: Image.asset(
                          list[index]["img"].toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      list[index]["txt1"].toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      list[index]["txt2"].toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 201, 195, 195),
                      ),
                    ),
                    trailing: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        children: [
                          Text(
                            list[index]["txt3"].toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.camera_alt, color: Colors.white, size: 18),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Bottom(),
          ],
        ),
      ),

      //   bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: const Color.fromARGB(255, 22, 96, 156),
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.grey,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.camera_alt),
      //       label: '', // required even if empty
      //     ),
      //   ],
      // ),
    );
  }
}

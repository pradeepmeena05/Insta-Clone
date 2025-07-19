import 'package:blinkit/bottom.dart';
import 'package:flutter/material.dart';

class Instamain extends StatelessWidget {
  const Instamain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 23, 22, 22),
            title:  Container(
            height: 50,
          
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/shape.png"),

                  Image.asset("assets/images/InstagramLogo.png", height: 30),
                  Row(
                    children: [
                      Image.asset("assets/images/igtv.png"),
                      const SizedBox(width: 10),
                      Image.asset("assets/images/messanger.png"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      
         backgroundColor: Colors.black,
      body: Column(
        children: [
         

         Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Image.asset("assets/images/yourStory.png", height: 90),
      ),
      SizedBox(width: 8),
      Expanded(
        child: Image.asset("assets/images/story.png", height: 80),
      ),
      SizedBox(width: 8),
      Expanded(
        child: Image.asset("assets/images/live.png", height: 80),
      ),
      SizedBox(width: 8),
      Expanded(
        child: Image.asset("assets/images/story.png", height: 80),
      ),
      SizedBox(width: 8),
      Expanded(
        child: Image.asset("assets/images/story3.png", height: 80),
      ),
      SizedBox(width: 8),
      Expanded(
        child: Image.asset("assets/images/story2.png", height: 80),
      ),
    ],
  ),
),


          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/dp.png",
                        fit: BoxFit.cover,
                       
                      ),
                    ),
                  ),

                  title: Row(
                    children: [
                      Text(
                        "joshua_l",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Image.asset("assets/images/officialIcon.png"),
                    ],
                  ),
                  subtitle: Text(
                    "Tokyo, Japan",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 226, 221, 221),
                      fontSize: 13,
                    ),
                  ),
                  trailing: Image.asset(
                    "assets/images/moreIcon.png",
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  "assets/images/instaimg.png",
                  height: 275,
                   width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/like.png",color: Colors.redAccent,),
                          SizedBox(width: 20),
                          Image.asset("assets/images/sshape.png"),
                          SizedBox(width: 20),
                          Image.asset("assets/images/mmessanger.png"),
                        ],
                      ),
                      Image.asset("assets/images/save.png"),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        child: ClipOval(
                          child: Image.asset("assets/images/oval.png"),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Liked by sujal_dave and 44,686 others",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "sujal_dave The game in Japan was amazing and I want to share some photos",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                  ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/dp.png",
                        fit: BoxFit.cover,
                       
                      ),
                    ),
                  ),

                  title: Row(
                    children: [
                      Text(
                        "joshua_l",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Image.asset("assets/images/officialIcon.png"),
                    ],
                  ),
                  subtitle: Text(
                    "Tokyo, Japan",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 226, 221, 221),
                      fontSize: 13,
                    ),
                  ),
                  trailing: Image.asset(
                    "assets/images/moreIcon.png",
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  "assets/images/instaimg.png",
                  height: 275,
                   width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/like.png",color: Colors.redAccent),
                          SizedBox(width: 20),
                          Image.asset("assets/images/sshape.png"),
                          SizedBox(width: 20),
                          Image.asset("assets/images/mmessanger.png"),
                        ],
                      ),
                      Image.asset("assets/images/save.png"),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        child: ClipOval(
                          child: Image.asset("assets/images/oval.png"),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Liked by sujal_dave and 44,686 others",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "sujal_dave The game in Japan was amazing and I want to share some photos",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
           Bottom()
        ],
      ),
    );
  }
}

import 'package:blinkit/profile.dart';
import 'package:flutter/material.dart';
import 'package:blinkit/bottom.dart';

class Follow extends StatefulWidget {
  const Follow({super.key});

  @override
  State<Follow> createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  bool isFollowingTab = true;

  List list = [
    {
      "title": "assets/images/fimg1.png",
      "txt": "karennne liked 3 posts. 3h",
      "img": "assets/images/timg1.png",
    },
    {
      "title": "assets/images/fimg2.png",
      "txt": "kiero_d, zackjohn and craig_love liked joshua_l photo. 3h",
      "img": "assets/images/timg3.png",
    },
    {
      "title": "assets/images/fimg3.png",
      "txt": "kiero_d started following craig_love. 3h",
      "img": "assets/images/timg1.png",
    },
    {
      "title": "assets/images/fimg4.png",
      "txt": "craig_love liked 8 posts. 3h",
      "img": "assets/images/timg1.png",
    },
    {
      "title": "assets/images/fimg5.png",
      "txt": "maxjacobson and zackjohn liked mis_potter’s post. 3h",
      "img": "assets/images/timg1.png",
    },
    {
      "title": "assets/images/fimg6.png",
      "txt": "maxjacobson and craig_love liked martini_rond’s post. 3h",
      "img": "assets/images/timg3.png",
    },
    {
      "title": "assets/images/fimg7.png",
      "txt": "karennne liked martini_rond’s comment: @martini_rond Nice! 3h",
      "img": "assets/images/timg4.png",
    },
    {
      "title": "assets/images/fimg8.png",
      "txt": "maxjacobson liked 3 posts. 3h",
      "img": "assets/images/img5.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 23, 22, 22),
        title: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: isFollowingTab ? Colors.white : Colors.transparent,
                      width: 2,
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      isFollowingTab = true;
                    });
                  },

                  child: Text(
                    "Following",
                    style: TextStyle(
                      color: isFollowingTab ? Colors.white : Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: isFollowingTab ? Colors.transparent : Colors.white,
                      width: 2,
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      isFollowingTab = false;
                    });
                  },
                  child: Text(
                    "You",
                    style: TextStyle(
                      color: isFollowingTab ? Colors.grey : Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: isFollowingTab ? _buildFollowingTab() : _buildYouTab(),
      ),
    );
  }

 Widget _buildFollowingTab() {
  return Column(
    children: [
      Expanded(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      list[index]["title"]!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  list[index]["txt"]!,
                  style: const TextStyle(color: Colors.white),
                ),
                trailing: Image.asset(
                  list[index]["img"]!,
                 
                ),
              ),
            );
          },
        ),
      ),
      const Bottom(), 
    ],
  );
}


  Widget _buildYouTab() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Follow Requests",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "New",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/oval3.png"),
                ),
                title: const Text(
                  "karennne liked your photo. 1h",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Image.asset("assets/images/ffrectangle.png"),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Today",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/oval4.png"),
                ),
                title: const Text(
                  "kiero_d, zackjohn and 26 others liked your photo. 3h",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Image.asset("assets/images/ffrectangle.png"),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "This Week",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/oval5.png"),
                ),
                title: const Text(
                  "craig_love mentioned you in a comment: @jacob_w exactly..",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Image.asset("assets/images/ffrectangle.png"),
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/oval6.png"),
                ),
                title: const Text(
                  "martini_rond started following you. 3d",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Container(
                  color: const Color.fromARGB(115, 49, 47, 47),
                  height: 40,
                  width: 100,
                  child:  Center(
                    child: TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Profile()));
                    }, child: Text(
                        "Message",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),),
                  )
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/oval7.png"),
                ),
                title: const Text(
                  "maxjacobson started following you. 3d",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Container(
                  color: const Color.fromARGB(115, 49, 47, 47),
                  height: 40,
                  width: 100,
                  child:  Center(
                    child: TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Profile()));
                    }, child: Text(
                        "Message",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),),
                  )
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/oval8.png"),
                ),
                title: const Text(
                  "mis_potter started following you. 3d",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      Colors.blue,
                    ),
                  ),
                  child: const Text(
                    "Follow",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "This Month",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/oval9.png"),
                ),
                title: const Text(
                  "m_humphrey started following you. 3d",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Image.asset("assets/images/ffrectangle.png"),
              ),
            ],
          ),
        ),
        const Bottom(),
      ],
    );
  }
}

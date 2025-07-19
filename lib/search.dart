import 'package:flutter/material.dart';
import 'package:blinkit/searchTopbar.dart';
import 'package:blinkit/bottom.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = ["IGTV", "Shop", "Style", "Sports", "Auto"];

    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: SizedBox(
          height: 40,
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              filled: true,
              fillColor: Colors.grey[900],
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              "assets/images/live2.png",
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(5, (index) {
                  return Searchtopbar(str: list[index]);
                }),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/rectangle.png",
                            fit: BoxFit.cover,
                            height: 124,
                            width: double.infinity,
                          ),
                          Image.asset(
                            "assets/images/img2.png",
                            fit: BoxFit.cover,
                            height: 124,
                            width: double.infinity,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/images/img3.png",
                        height: 250,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/images/img4.png",
                        fit: BoxFit.cover,
                        height: 124,
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/images/gallery.png",
                        fit: BoxFit.cover,
                        height: 124,
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/images/gallery2.png",
                        fit: BoxFit.cover,
                        height: 124,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/images/img5.png",
                        fit: BoxFit.cover,
                        height: 124,
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/images/img6.png",
                        fit: BoxFit.cover,
                        height: 124,
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/images/img7.png",
                        fit: BoxFit.cover,
                        height: 124,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/images/img8.png",
                        fit: BoxFit.cover,
                        height: 124,
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/images/img9.png",
                        fit: BoxFit.cover,
                        height: 124,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Bottom(),
        ],
      ),
    );
  }
}

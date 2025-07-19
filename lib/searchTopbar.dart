import 'package:flutter/material.dart';
import 'search.dart';

class Searchtopbar extends StatelessWidget {
  final String str;
  const Searchtopbar({super.key, required this.str});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
         decoration: BoxDecoration(
 color: Colors.black,
  borderRadius: BorderRadius.all(Radius.circular(5))
         ),
       
        height: 30,
        width: MediaQuery.of(context).size.width*(str.length * 0.04),
        child: Align(
          alignment: Alignment.center,
          child: Text(str, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}

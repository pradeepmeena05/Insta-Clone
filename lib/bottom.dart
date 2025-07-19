import 'package:blinkit/instamain.dart';
import 'package:blinkit/like.dart';
import 'package:blinkit/main.dart';
import 'package:blinkit/post.dart';
import 'package:blinkit/profile.dart';
import 'package:blinkit/search.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if(_selectedIndex==0){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Instamain()));
    }
    else if(_selectedIndex==1){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Search()));
    }else  if(_selectedIndex==2){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Instamain()));
    } 
    else  if(_selectedIndex==3){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Follow()));
    } 
    else  if(_selectedIndex==4){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Post()));
    } 
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
     backgroundColor: const Color.fromARGB(255, 23, 22, 22),
     type: BottomNavigationBarType.fixed,
     currentIndex: _selectedIndex,
     onTap: _onItemTapped,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(color: Colors.white),

      items: [
             BottomNavigationBarItem(icon: Image.asset("assets/images/Icon.png",color: _selectedIndex==0?Colors.white:Colors.grey,),label: ''),
             BottomNavigationBarItem(icon: Image.asset("assets/images/Icon2.png",color: _selectedIndex==1?Colors.white:Colors.grey,),label: ''),
             BottomNavigationBarItem(icon: Image.asset("assets/images/icon3.png",color: _selectedIndex==2?Colors.white:Colors.grey,),label: ''),
             BottomNavigationBarItem(icon: Image.asset("assets/images/like.png",color: _selectedIndex==3?Colors.white:Colors.grey,),label: ''),
             BottomNavigationBarItem(icon: Image.asset("assets/images/oval2.png",),label: ''),

          ],
     
      
      
    );
  }
}

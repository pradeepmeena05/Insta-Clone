import 'package:blinkit/instamain.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Image.asset("assets/images/InstagramLogo.png"),
              SizedBox(height: 30),
              _buildTextField("Email", false),
              SizedBox(height: 20),
              _buildTextField("Password", true),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                   
                      
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Instamain()));

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 70, 145, 231),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(),
                ),
                child: Text("Log in", style: TextStyle(fontSize: 20,color: Colors.white)),
              ),
              SizedBox(height: 50),

              Text(
                "Log in with Facebook",
                style: TextStyle(
                  color: const Color.fromARGB(255, 38, 126, 227),
                  fontSize: 20
                ),
              ),

              SizedBox(height: 20),

              Text("OR", style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text("Sign Up", style: TextStyle(color: Colors.cyanAccent)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, bool isPassword) {
    return TextField(
      obscureText: isPassword,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white54),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

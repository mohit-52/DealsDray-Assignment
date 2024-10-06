import 'package:dealsdray/HomeScreen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Back button functionality
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo.png', // Replace with your image asset path
                    height: 100,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Lets Begin' ,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Please Enter Your Credentials To Begin',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Your Email',
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 30),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Create Password',
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Referal Code (Optional)',
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (c)=> HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), backgroundColor: Colors.red, // Button color

                ),
                child: Icon(Icons.arrow_right_alt, color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

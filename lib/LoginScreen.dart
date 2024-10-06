import 'package:dealsdray/OtpScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPhoneSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  ToggleButtons(
                    borderRadius: BorderRadius.circular(20),
                    isSelected: [isPhoneSelected, !isPhoneSelected],
                    selectedColor: Colors.white,
                    color: Colors.black,
                    fillColor: Colors.redAccent,
                    selectedBorderColor: Colors.redAccent,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Phone'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Email'),
                      ),
                    ],
                    onPressed: (int index) {
                      setState(() {
                        isPhoneSelected = index == 0;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Glad to see you!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              isPhoneSelected? 'Please provide your phone number' : 'Please provide your Email',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: isPhoneSelected? 'Phone' : 'Email',
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (c)=> OtpScreen()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15), backgroundColor: Colors.pink[100], // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'SEND CODE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

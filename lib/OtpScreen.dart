import 'dart:async';
import 'package:dealsdray/OnBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int _start = 30;
  Timer? _timer;

  TextEditingController otpController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startTimer();
  }

  void _startTimer(){
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          _timer!.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }
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

          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/otp.jpg', // Replace with your image asset path
                    height: 100,
                  ),


                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'OTP Verification',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
             'We have sent a unique OTP number to your mobile +91-9765232817',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),

            // PinCodeFields for OTP
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                controller: otpController,
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  print(value);
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  inactiveColor: Colors.black,
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeColor: Colors.black
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text(
                '$_start seconds',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'SEND AGAIN',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (c)=> OnBoardingScreen()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15), backgroundColor: Colors.pink[100], // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Verify',
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




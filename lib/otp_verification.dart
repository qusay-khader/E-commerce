import 'package:flutter/material.dart';
import 'package:ecommerce_1/Home Screen/home.dart';
import 'dart:async';

class otp_verificationPage extends StatefulWidget {
  const otp_verificationPage({super.key});

  @override
  State<otp_verificationPage> createState() => _MyStatefulPageState();
}

class _MyStatefulPageState extends State<otp_verificationPage> {
  DateTime? _lastPressedTime;
  final int _timeLimit = 5;
  int _remainingTime = 59;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),

      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "OTP Verification",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text.rich(
              TextSpan(
                text:
                    "We sent your code to +1 123 456 7890\n"
                    "This code will expire in ",
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                children: [
                  TextSpan(
                    text: "00:${_remainingTime.toString().padLeft(2, '0')}",
                    style: TextStyle(
                      color: _remainingTime < 10
                          ? Colors.red
                          : Color(0xFFFF7643),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 130),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 60,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    style: const TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.length == 1 && index < 3) {
                        FocusScope.of(context).nextFocus();
                      } else if (value.isEmpty && index > 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                  ),
                );
              }),
            ),

            SizedBox(height: 130),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => Home()),
                      (Route) => false,
                    );

                    // Navigator.pushAndRemoveUntil (
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Home(),(Route)=>false),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF7643),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                    elevation: 0,
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100),

            SizedBox(height: 20),
            InkWell(
              onTap: () {
                print("Resend OTP tapped");
              },
              child: Text(
                "Resend OTP Code",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

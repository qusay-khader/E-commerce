import 'package:ecommerce_1/complete_profile.dart';
import 'package:ecommerce_1/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen()),
  );
}

class RegisterAccountPage extends StatefulWidget {
  const RegisterAccountPage({super.key});

  @override
  State<RegisterAccountPage> createState() => _RegisterAccount();
}

class _RegisterAccount extends State<RegisterAccountPage> {
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
              "Register Account",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Complete your details or continue\nwith social media",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.grey[600]),
            ),
            SizedBox(height: 55),

            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(25, 18, 20, 18),

                labelText: " Email ",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 14,
                  backgroundColor: Colors.white,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelAlignment: FloatingLabelAlignment.start,

                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.black45),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(
                    Icons.email_outlined,
                    color: Colors.grey[500],
                    size: 30,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.black45, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.5),
                ),
              ),
            ),

            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(25, 18, 20, 18),

                labelText: " password ",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 14,
                  backgroundColor: Colors.white,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelAlignment: FloatingLabelAlignment.start,

                hintText: "Enter your password",
                hintStyle: TextStyle(color: Colors.black45),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.grey[500],
                    size: 30,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.black45, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.5),
                ),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(25, 18, 20, 18),

                labelText: " Confirm Password ",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 14,
                  backgroundColor: Colors.white,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelAlignment: FloatingLabelAlignment.start,

                hintText: "Re-enter your password",
                hintStyle: TextStyle(color: Colors.black45),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.grey[500],
                    size: 30,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.black45, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.grey[300]!, width: 1.5),
                ),
              ),
            ),

            SizedBox(height: 45),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const complete_profilePage(),
                      ),
                    );
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

            SizedBox(height: 150),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialIcon('asset/icons/google-icon.svg'),
                const SizedBox(width: 20),
                _buildSocialIcon('asset/icons/facebook-2.svg'),
                const SizedBox(width: 20),
                _buildSocialIcon('asset/icons/twitter.svg'),
              ],
            ),
            SizedBox(height: 20),

            Text(
              "By Continuing you confirm that you agree",
              style: TextStyle(color: Colors.grey[700], fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialIcon(String iconPath) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 245, 246, 249),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(1, 2),
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(iconPath, width: 24, height: 24),
        padding: EdgeInsets.zero,
      ),
    );
  }
}

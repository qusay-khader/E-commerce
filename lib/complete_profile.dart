import 'otp_verification.dart';
import 'package:flutter/material.dart';

class complete_profilePage extends StatefulWidget {
  const complete_profilePage({super.key});

  @override
  State<complete_profilePage> createState() => _complete_profile();
}

class _complete_profile extends State<complete_profilePage> {
  final TextEditingController firstName = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),

      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                "Complete Profile",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Complete your details or continue\nwith social media",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
              ),
              SizedBox(height: 55),

              TextFormField(
                controller: firstName,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(25, 18, 20, 18),

                  labelText: " First Name ",
                  labelStyle: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    backgroundColor: Colors.white,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelAlignment: FloatingLabelAlignment.start,

                  hintText: "Enter your first name",
                  hintStyle: TextStyle(color: Colors.black45),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.grey[500],
                      size: 30,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black45, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                      width: 1.5,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

              TextFormField(
                controller: lastName,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(25, 18, 20, 18),

                  labelText: " Last Name ",
                  labelStyle: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    backgroundColor: Colors.white,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelAlignment: FloatingLabelAlignment.start,

                  hintText: "Enter your last name",
                  hintStyle: TextStyle(color: Colors.black45),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.grey[500],
                      size: 30,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black45, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: phoneNumber,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(25, 18, 20, 18),

                  labelText: " phone number ",
                  labelStyle: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    backgroundColor: Colors.white,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelAlignment: FloatingLabelAlignment.start,

                  hintText: "Enter your phone number",
                  hintStyle: TextStyle(color: Colors.black45),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.phone_iphone_outlined,
                      color: Colors.grey[500],
                      size: 30,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black45, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: address,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(25, 18, 20, 18),

                  labelText: " address ",
                  labelStyle: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    backgroundColor: Colors.white,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelAlignment: FloatingLabelAlignment.start,

                  hintText: "Enter your phone address",
                  hintStyle: TextStyle(color: Colors.black45),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey[500],
                      size: 30,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black45, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                      width: 1.5,
                    ),
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
                          builder: (context) => const otp_verificationPage(),
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

              SizedBox(height: 100),

              Text(
                "By continuing you confirm that you agree\nwith our Terms and Conditions",
                style: TextStyle(color: Colors.grey[700], fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

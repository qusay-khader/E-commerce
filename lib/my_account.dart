// ignore_for_file: deprecated_member_use, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyAccount());
}

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();
  final TextEditingController homeNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile", style: TextStyle(color: Colors.grey[600])),
          centerTitle: true,
        ),

        body: ListView(
          children: [
            SizedBox(height: 30),

            Container(
              alignment: Alignment(0, 0),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        "asset/images/Profile Image.png",
                        width: 130,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "asset/icons/Camera Icon.svg",
                          width: 25,
                          height: 25,
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          padding: EdgeInsets.all(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Form(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    TextFormFieldCustom(
                      controller: firstNameController,
                      HantText: "Zaatar",
                      IconPath: "asset/icons/User.svg",
                      labelText: "First Name",
                    ),
                    SizedBox(height: 30),

                    TextFormFieldCustom(
                      controller: lastNameController,
                      HantText: "zaatur",
                      IconPath: "asset/icons/User.svg",
                      labelText: "Last Name",
                    ),
                    SizedBox(height: 30),

                    TextFormFieldCustom(
                      controller: phoneController,
                      HantText: "+1 898 860 864",
                      IconPath: "asset/icons/Phone.svg",
                      labelText: "Phone Number",
                    ),
                    SizedBox(height: 30),

                    TextFormFieldCustom(
                      controller: emailController,
                      HantText: "Enter your Email",
                      IconPath: "asset/icons/Mail.svg",
                      labelText: "Email",
                    ),
                    SizedBox(height: 30),

                    TextFormFieldCustom(
                      controller: passwordController,
                      HantText: "Enter your Password",
                      IconPath: "asset/icons/Lock.svg",
                      labelText: "Password",
                    ),
                    SizedBox(height: 30),

                    TextFormFieldCustom(
                      controller: addressController,
                      HantText: "JORDAN, ALZarqa",
                      IconPath: "asset/icons/Location point.svg",
                      labelText: "Address",
                    ),
                    SizedBox(height: 30),

                    TextFormFieldCustom(
                      controller: postalCodeController,
                      HantText: "123211",
                      IconPath: "asset/icons/Location point.svg",
                      labelText: "Postal code",
                    ),
                    SizedBox(height: 30),

                    TextFormFieldCustom(
                      controller: homeNumberController,
                      HantText: "6",
                      IconPath: "asset/icons/Location point.svg",
                      labelText: "Home Number",
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF7643),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(222),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        fixedSize: Size(370, 60),
                      ),

                      child: Text(
                        "Save Changes",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFormFieldCustom extends StatelessWidget {
  TextFormFieldCustom({
    super.key,

    required this.IconPath,
    required this.controller,
    required this.labelText,
    required this.HantText,
  });

  final String IconPath;
  final String labelText;
  final String HantText;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(40, 18, 20, 18),

        labelText: "   $labelText   ",

        labelStyle: TextStyle(
          color: Colors.black45,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,

        hintText: HantText,
        hintStyle: TextStyle(color: Colors.black45),
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 25),
          child: Transform.scale(
            scale: 0.8,
            child: SvgPicture.asset(IconPath, width: 20, height: 20),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey[300]!, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.black45, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey[300]!, width: 1.5),
        ),
      ),
    );
  }
}

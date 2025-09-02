// ignore_for_file: deprecated_member_use, file_names

import 'package:ecommerce_1/my_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ProfilePage());
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                          width: 1,
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
            ListTileProfile(
              buttonName: 'My Account',
              leadingIconPath: "asset/icons/User Icon.svg",
            ),
            ListTileProfile(
              buttonName: 'Notifications',
              leadingIconPath: "asset/icons/Bell.svg",
            ),
            ListTileProfile(
              buttonName: 'Settings',
              leadingIconPath: "asset/icons/Settings.svg",
            ),
            ListTileProfile(
              buttonName: 'Help Center',
              leadingIconPath: "asset/icons/Question mark.svg",
            ),
            ListTileProfile(
              buttonName: 'Log out',
              leadingIconPath: "asset/icons/Log out.svg",
            ),
          ],
        ),
      ),
    );
  }
}

class ListTileProfile extends StatelessWidget {
  const ListTileProfile({
    super.key,
    required this.leadingIconPath,
    required this.buttonName,
  });

  final String leadingIconPath;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, 0),
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          leadingIconPath,
          color: Color(0xFFFF7643),
          width: 25,
          height: 25,
        ),
        title: Text(buttonName),
        trailing: SvgPicture.asset(
          "asset/icons/arrow_right.svg",
          color: const Color.fromARGB(255, 0, 0, 0),
          width: 15,
          height: 15,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyAccount()),
          );
        },
      ),
    );
  }
}

// class ListTileProfile extends StatelessWidget {
//   const ListTileProfile({
//     super.key,
//     required this.leadingIconPath,
//     required this.buttonName,
//     required this.trailingIconPath,
//   });
//   final String leadingIconPath;
//   final String buttonName;
//   final String trailingIconPath;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: SvgPicture.asset(
//         leadingIconPath,
//         color: Color(0xFFFF7643),
//         width: 25,
//         height: 25,
//       ),
//       title: Text(buttonName),
//       trailing: SvgPicture.asset(
//         trailingIconPath,
//         color: const Color.fromARGB(255, 0, 0, 0),
//         width: 15,
//         height: 15,
//       ),
//       onTap: () {
//         // Handle onTap
//       },
//     );
//   }
// }

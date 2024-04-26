import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonModel {
  final String name;
  final IconData icon;
  final Function onPress;

  ButtonModel({
    required this.name,
    required this.icon,
    required this.onPress,
  });
}

final List<ButtonModel> buttons = [
  ButtonModel(
    name: 'History',
    icon: Icons.access_alarm,
    onPress: () {
      print('Button 1 pressed');
    },
  ),
  ButtonModel(
    name: 'Bank Details',
    icon: Icons.bakery_dining,
    onPress: () {
      print('Button 2 pressed');
    },
  ),
  ButtonModel(
    name: 'Notifications',
    icon: Icons.notification_important,
    onPress: () {
      print('Button 2 pressed');
    },
  ),
  ButtonModel(
    name: 'Security',
    icon: Icons.security,
    onPress: () {
      print('Button 2 pressed');
    },
  ),
  ButtonModel(
    name: 'Help and Support',
    icon: Icons.help,
    onPress: () {
      print('Button 2 pressed');
    },
  ),
  ButtonModel(
    name: 'Terms and conditions',
    icon: Icons.document_scanner,
    onPress: () {
      print('Button 2 pressed');
    },
  ),
  ButtonModel(
    name: 'Personal Information',
    icon: Icons.person_3,
    onPress: () {
      print('Button 2 pressed');
    },
  ),
];

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 197, 203, 255),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(15),
            color: const Color.fromARGB(255, 14, 38, 255),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: CircleAvatar(
                      minRadius: 40,
                      backgroundColor: Color.fromARGB(255, 197, 203, 255),
                      child: Icon(Icons.person_3,
                          size: 45, color: Color.fromARGB(255, 14, 38, 255)),
                    ),
                  ),
                  Text('User Name',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont('Nunito',
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700)),
                  Text('username@gmail.com',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont('Nunito',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SizedBox(
              height: 530,
              child: ListView.builder(
                itemCount: buttons.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      minVerticalPadding: 20,
                      trailing: const Icon(Icons.arrow_forward),
                      leading: Icon(buttons[index].icon),
                      title: Text(buttons[index].name,
                          style: GoogleFonts.getFont('Nunito',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

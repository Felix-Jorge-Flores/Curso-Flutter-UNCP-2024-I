import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../assets/constants.dart' as constants;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF147c84),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                constants.profilePhotoUrl,
              ),
            ),
            const SizedBox(height: 10.0),
            Text('Jorge Flores',
                style: GoogleFonts.comicNeue(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                )),
            Text('FLUTTER DEVELOPER',
                style: GoogleFonts.sourceSansPro(
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(constants.numberPhone,
                      style: GoogleFonts.sourceSansPro(
                        color: Colors.teal.shade900,
                        fontSize: 16.0,
                      ))),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(constants.numberPhone,
                    style: GoogleFonts.sourceSansPro(
                      color: Colors.teal.shade900,
                      fontSize: 16.0,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

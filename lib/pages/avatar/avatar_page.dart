import 'package:flutter/material.dart';
import '../../assets/constants.dart' as constants;

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Avatar Page',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        shadowColor: Colors.black,
        elevation: 10.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Colors.red,
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(constants.profilePhotoUrl),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(constants.profilePhotoUrl),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Jorge Flores',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white70,
              ),
            ),
            const SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.white70,
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.orange,
                ),
                title: Text(
                  constants.numberPhone,
                  style: TextStyle(
                    color: Colors.orange.shade900,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.orange,
                ),
                title: Text(
                  constants.email,
                  style: TextStyle(
                    color: Colors.orange.shade900,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.orange,
    );
  }
}

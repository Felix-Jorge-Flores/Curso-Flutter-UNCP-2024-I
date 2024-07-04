import 'package:flutter/material.dart';

class PasswordInputPage extends StatefulWidget {
  const PasswordInputPage({super.key});

  @override
  State<PasswordInputPage> createState() => _PasswordInputPageState();
}

class _PasswordInputPageState extends State<PasswordInputPage> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Password-InputPage',
                style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.black,
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          obscureText: _isObscured,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  _isObscured = !_isObscured;
                });
              },
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

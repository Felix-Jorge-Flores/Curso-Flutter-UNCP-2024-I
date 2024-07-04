import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../assets/constants.dart' as constants;

class InputGeneralPage extends StatelessWidget {
  const InputGeneralPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Center(
            child: Text('General InputPage SII',
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
        child: Column(
          children: <Widget>[
            TextField(
              maxLines: 1,
              maxLength: 20,
              textAlign: TextAlign.start,
              cursorColor: Colors.purple,
              style: const TextStyle(
                  color: Colors.purpleAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                label: const Text('correo electronico'),
                icon: const Icon(Icons.email),
                prefixIcon: const Icon(Icons.alternate_email),
                suffix: const Icon(
                  Icons.email_outlined,
                  color: Colors.blueAccent,
                ),
                hintText: constants.email,
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.35),
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal),
              ),
              onChanged: (String value) {
                print(value);
              },
            ),
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.yellow,
                    width: 2.0,
                  ),
                ),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Buscar producto',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Buscar producto....',
                suffixIcon: Container(
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        const BoxShadow(
                            color: Colors.pink,
                            offset: Offset(4, 4),
                            blurRadius: 7.0)
                      ]),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                hintStyle: GoogleFonts.poppins(
                    color: Colors.black.withOpacity(0.35),
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: const BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: const BorderSide(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

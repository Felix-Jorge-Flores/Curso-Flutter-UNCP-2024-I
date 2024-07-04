import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prueba_flutter_2024/pages/alert/alerta_page.dart';
import 'package:prueba_flutter_2024/pages/alert/alerta_page_2.dart';
import 'package:prueba_flutter_2024/pages/inputs/inputs.dart';
import '../../assets/constants.dart' as constants;

class DrawerStackPage extends StatefulWidget {
  const DrawerStackPage({super.key});

  @override
  State<DrawerStackPage> createState() => _DrawerYStackPageState();
}

class _DrawerYStackPageState extends State<DrawerStackPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isInvisible = false;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xfffbf5ff),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.pinkAccent,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    constants.bgPhotoUrlUser,
                  ),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const CircleAvatar(
                      backgroundImage: NetworkImage(constants.profilePhotoUrl),
                      backgroundColor: Colors.white,
                      radius: 40.0,
                    ),
                    // SizedBox(height: 10.0),
                    const Text(
                      constants.userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'Colaborador',
                      style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Avatar Page'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const InputPage())),
            ),
            ListTile(
              leading: const Icon(Icons.warning),
              title: const Text('Alert 1'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AlertaPage())),
            ),
            ListTile(
              leading: const Icon(Icons.warning),
              title: const Text('Alert 2'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AlertaPage2())),
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Inputs'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InputGeneralPage())),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            color: const Color(0xff944db7),
            iconSize: 30,
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
          const Stack(
            children: [
              Positioned(
                top: -150,
                right: -150,
                child: CircleWidget(
                  colors: [
                    Color(0xffD74287),
                    Color(0xffE99189),
                  ],
                  radius: 400,
                ),
              ),
              Positioned(
                top: 80,
                left: 30,
                child: CircleWidget(
                  colors: [
                    Color(0xff9730ec),
                    Color(0xff0c7544),
                  ],
                  radius: 50,
                ),
              ),
              Positioned(
                bottom: -150,
                left: -100,
                child: CircleWidget(
                  colors: [
                    Color(0xff9730ec),
                    Color(0xff0c7544),
                  ],
                  radius: 300,
                ),
              ),
            ],
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 150.0),
                  SizedBox(
                    width: 200,
                    child: Text(
                      'Create Your Account',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Color(0xff362274),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Email Address',
                        hintStyle:
                            TextStyle(fontSize: 14.0, color: Color(0xff72629b)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff9730ec), width: 1.4))),
                  ),
                  const SizedBox(height: 20.0),
                  TextField(
                      style: const TextStyle(
                          fontSize: 14.0, color: Color(0xff945fc5)),
                      cursorColor: const Color(0xff7766ad),
                      obscureText: isInvisible,
                      decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 14.0, color: Color(0xff7c6cb0)),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xff72629b),
                          ),
                          labelText: 'Password',
                          border: const UnderlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                isInvisible = !isInvisible;
                                setState(() {});
                              },
                              icon: isInvisible
                                  ? const Icon(Icons.visibility_off,
                                      color: Color(0xff72629b))
                                  : const Icon(Icons.visibility,
                                      color: Colors.redAccent)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff9730ec), width: 1.4)))),
                  const SizedBox(height: 30.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        backgroundColor: Colors.pinkAccent,
                        fixedSize: Size.copy(Size.fromWidth(screenWidth)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100.0, vertical: 20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text('Create Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ]),
          )),
        ],
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  final double radius;
  final List<Color> colors;

  const CircleWidget({
    super.key,
    required this.radius,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
          color: Colors.pinkAccent,
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: colors),
          boxShadow: [
            BoxShadow(
                color: colors[0].withOpacity(0.7),
                blurRadius: 12.0,
                offset: const Offset(4, 4))
          ]),
    );
  }
}

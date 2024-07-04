import 'package:flutter/material.dart';
import 'package:prueba_flutter_2024/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desarrollo de Apliciones Móviles',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const double padding = 16.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Column(children: <Widget>[
          Image.network(
              "https://imagenes.20minutos.es/files/image_990_auto/uploads/imagenes/2022/11/22/lago-kawaguchiko.jpeg"),
          const Padding(
            padding: EdgeInsets.all(padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lago en las montañas prueba",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1696a6)),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Sacando de pexless",
                      style: TextStyle(color: Color(0xff4FE5CD)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffFF6464),
                      size: 30.0,
                    ),
                    Text(
                      "41",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4FE5CD),
                        fontSize: 18.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Padding(
            padding: EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blueAccent,
                      size: 30.0,
                    ),
                    Text(
                      "CALL",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.send,
                      color: Colors.blueAccent,
                      size: 30.0,
                    ),
                    Text(
                      "SEND",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blueAccent,
                      size: 30.0,
                    ),
                    Text(
                      "SHARE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Padding(
            padding: EdgeInsets.all(padding),
            child: Text(
                "Aliquip labore laboris elit nisi id irure ullamco reprehenderit eu fugiat. Consequat pariatur aliqua sit amet elit officia tempor velit. Laboris officia aliqua aliquip ad consequat enim laborum dolor quis ex voluptate nostrud enim."),
          ),
        ]),
      ),
    );
  }
}

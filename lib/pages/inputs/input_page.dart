import 'package:flutter/material.dart';
import 'package:prueba_flutter_2024/pages/home/home_page.dart';
import 'package:prueba_flutter_2024/pages/inputs/inputs.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Center(
            child:
                Text('Input Page SI', style: TextStyle(color: Colors.white))),
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
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            MenuItem(
              onPress: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InputGeneralPage())),
              title: 'Inputs generales',
              subtitle: 'Ir a los detalles de Inputs generales',
              icon: const Icon(
                Icons.input,
                color: Colors.grey,
              ),
            ),
            MenuItem(
              onPress: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasswordInputPage())),
              title: 'Inputs de contraseña',
              subtitle: 'Ir a los detalles de Inputs de contaseña',
              icon: const Icon(
                Icons.input,
                color: Colors.grey,
              ),
            ),
            MenuItem(
              onPress: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CaptureInputsPage())),
              title: 'Captura de valores del Input page',
              subtitle: 'Ir a la captura de valores del Input page',
              icon: const Icon(
                Icons.input,
                color: Colors.grey,
              ),
            ),
            MenuItem(
              onPress: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalendarPage())),
              title: 'Calendar de valores del Input page',
              subtitle: 'Ir a la calendar de valores del Input page',
              icon: const Icon(
                Icons.input,
                color: Colors.grey,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:prueba_flutter_2024/helpers/alerts.dart';

class AlertaPage2 extends StatelessWidget {
  const AlertaPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(title: const Text('AlertaPage2')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.red)),
              // Alerta
              onPressed: () => alertError(context),
              child: const Text('Botón de error'),
            ),
            const SizedBox(height: 16),
            FilledButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.yellow)),
              // Alerta
              onPressed: () => alertWarning(context),
              child: const Text('Botón de advertencia'),
            )
          ],
        ),
      ),
    );
  }
}

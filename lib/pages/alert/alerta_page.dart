import 'package:flutter/material.dart';
import 'package:prueba_flutter_2024/helpers/alerts.dart';

class AlertaPage extends StatelessWidget {
  const AlertaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(title: const Text('AlertaPage')),
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
              onPressed: () => mostrarLoading(context),
              child: const Text('Botón de alerta'),
            ),
            const SizedBox(height: 16),
            FilledButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.green)),
              // Alerta
              onPressed: () => alertSucessfull(context),
              child: const Text('Botón exitoso'),
            )
          ],
        ),
      ),
    );
  }
}

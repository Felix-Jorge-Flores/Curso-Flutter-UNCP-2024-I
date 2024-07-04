import 'package:flutter/material.dart';

mostrarLoading(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Text('Félix - Cuadro de Alerta'),
            content: const SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 100,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Flutter alert',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Veniam officia mollit occaecat proident excepteur ipsum nisi deserunt sit enim sit. Ut pariatur est commodo magna non occaecat est aute. Elit qui dolor laboris nulla eu magna fugiat labore non proident Lorem. Non proident excepteur minim reprehenderit ullamco aliqua proident elit excepteur Lorem reprehenderit elit elit.',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            actions: [
              FilledButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.blue)),
                // Alerta
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'aceptar',
                  style: TextStyle(),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('boton'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'cerrar',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ));
}

alertSucessfull(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Text(
              'Tarea exitosa',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            content: const SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 100,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Alerta extiosa',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      // color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Exercitation consectetur occaecat fugiat cupidatat id officia quis nulla anim est sint nulla. Qui amet minim mollit officia veniam ea ullamco pariatur nostrud dolore. Minim sint aliqua consequat non nostrud aute non. Amet laboris laborum irure fugiat duis aute cillum quis anim commodo amet incididunt laboris minim. Officia voluptate non dolor irure proident esse quis ipsum consequat pariatur. Officia sint et amet eu enim adipisicing consectetur aliquip do ipsum dolor aliquip. Consequat do nisi nisi nulla ex.',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            actions: [
              FilledButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black)),
                // Alerta
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'aceptar',
                  style: TextStyle(),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'boton',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'cerrar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ));
}

alertError(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Text(
              'Error',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            content: const SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.error,
                    color: Colors.white,
                    size: 100,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Alerta de Error',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      // color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Exercitation consectetur occaecat fugiat cupidatat id officia quis nulla anim est sint nulla. Qui amet minim mollit officia veniam ea ullamco pariatur nostrud dolore. Minim sint aliqua consequat non nostrud aute non. Amet laboris laborum irure fugiat duis aute cillum quis anim commodo amet incididunt laboris minim. Officia voluptate non dolor irure proident esse quis ipsum consequat pariatur. Officia sint et amet eu enim adipisicing consectetur aliquip do ipsum dolor aliquip. Consequat do nisi nisi nulla ex.',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            actions: [
              FilledButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black)),
                // Alerta
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'aceptar',
                  style: TextStyle(),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'boton',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'cerrar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ));
}

alertWarning(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
            backgroundColor: Colors.yellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Text(
              'Advertencia',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            content: const SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.warning,
                    color: Colors.white,
                    size: 100,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Alerta de advertencia',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      // color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Exercitation consectetur occaecat fugiat cupidatat id officia quis nulla anim est sint nulla. Qui amet minim mollit officia veniam ea ullamco pariatur nostrud dolore. Minim sint aliqua consequat non nostrud aute non. Amet laboris laborum irure fugiat duis aute cillum quis anim commodo amet incididunt laboris minim. Officia voluptate non dolor irure proident esse quis ipsum consequat pariatur. Officia sint et amet eu enim adipisicing consectetur aliquip do ipsum dolor aliquip. Consequat do nisi nisi nulla ex.',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            actions: [
              FilledButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black)),
                // Alerta
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'aceptar',
                  style: TextStyle(),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'boton',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'cerrar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ));
}

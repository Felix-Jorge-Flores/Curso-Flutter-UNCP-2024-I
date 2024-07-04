import 'package:flutter/material.dart';

class CaptureInputsPage extends StatefulWidget {
  const CaptureInputsPage({super.key});

  @override
  State<CaptureInputsPage> createState() => _CaptureInputsPageState();
}

class _CaptureInputsPageState extends State<CaptureInputsPage> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _nombre = '';
  String _nombre2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child:
                Text('Capture-Inputs', style: TextStyle(color: Colors.white))),
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
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Ingrese tu nombre',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controller2,
              decoration: const InputDecoration(
                labelText: 'Ingrese tu nombre',
                hintText: 'Por defecto',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _nombre = _controller.text;
                  _nombre2 = _controller2.text;
                });
              },
              child: const Text('Mostrar Valor!'),
            ),
            const SizedBox(height: 20),
            Text('$_nombre\n$_nombre2'),
          ],
        ),
      ),
    );
  }
}

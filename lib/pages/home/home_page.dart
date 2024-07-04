import 'package:flutter/material.dart';
import 'package:prueba_flutter_2024/pages/alert/alert_pages.dart';
import 'package:prueba_flutter_2024/pages/drawer_stack/drawer_stack_page.dart';
import 'package:prueba_flutter_2024/pages/inputs/input_page.dart';
import '../avatar/avatar_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Flutter Componentes'),
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                // decoration: const BoxDecoration(
                //     image: DecorationImage(
                //       image: NetworkImage(
                //         'https://i.pinimg.com/564x/bf/06/3c/bf063c64d95b50e16ba9db50e48c55a9.jpg',
                //       ),
                //       fit: BoxFit.cover,
                //     ),
                //     ),
                foregroundDecoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://i.pinimg.com/564x/bf/06/3c/bf063c64d95b50e16ba9db50e48c55a9.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                    // shape: BoxShape.circle,
                    ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Flutter Componentes',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              MenuItem(
                  onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AvatarPage()),
                      )),
              MenuItem(
                title: 'Boletas',
                subtitle: 'Pagina de facturas y boletas',
                icon: const Icon(
                  color: Colors.grey,
                  Icons.fact_check,
                ),
                onPress: () {},
              ),
              MenuItem(
                  title: 'Alerta',
                  subtitle: 'Ir a detalle de alerta',
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AlertaPage()),
                      )),
              MenuItem(
                  title: 'Alerta 2',
                  subtitle: 'Ir a detalle de alerta 2',
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AlertaPage2()),
                      )),
              MenuItem(
                onPress: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const InputPage())),
                title: 'Inputs generales',
                subtitle: 'Ir a los detalles de Inputs generales',
                icon: const Icon(
                  Icons.input,
                  color: Colors.grey,
                ),
              ),
              MenuItem(
                onPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DrawerStackPage())),
                title: 'Drawer y Stack',
                subtitle: 'Ir a los detalles de Drawer y Stack',
                icon: const Icon(
                  Icons.input,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final Function() onPress;
  const MenuItem({
    super.key,
    this.title = 'Avatar',
    this.subtitle = 'Ir a detalle del Avatar',
    this.icon = const Icon(
      Icons.check_circle,
      color: Colors.grey,
    ),
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: ListTile(
          leading: icon,
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: onPress),
    );
  }
}

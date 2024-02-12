import 'package:counter_app/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(),
            Text("Hola Fernando"),
            Entrar(),
            Text("Recupera o crea tu clave internet"),
            Text("No soy Fernando"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset('assets/clave.png'), label: 'Clave Dinamica'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/oportunidad.png'),
              label: 'Oportunidades unicas'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/asistencia.png'), label: 'Asistencia'),
        ],
        onTap: (value) {
          print("muestra $value");
          switch (value) {
            case 0:
              Navigator.pushNamed(context, "/counter");
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}

class Entrar extends ConsumerWidget {
  const Entrar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 12.0, textStyle: const TextStyle(color: Colors.white)),
      child: Text('Entrar $counter'),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/logo_falabella.png");
  }
}

class Oportunidad extends StatelessWidget {
  const Oportunidad({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/oportunidad.png");
  }
}

import 'package:counter_app/config/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Barra de opciones'),
          ),
          ListTile(
            title: const Text('Counter'),
            onTap: () => context.go(const CounterRoute('2').location),
          ),
          ListTile(
            title: const Text('Signin'),
            onTap: () => context.go('/signin'),
          ),
          ListTile(
            title: const Text('Login'),
            onTap: () => context.go('/login'),
          ),
        ],
      ),
    );
  }
}

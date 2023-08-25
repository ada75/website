import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyDrawer extends StatelessWidget {

  MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text("Accueil"),
            leading: const Icon(Icons.home),
            onTap: () => context.go("/"),
          ),
          ListTile(
            title: const Text("Privacy"),
            leading: const Icon(Icons.privacy_tip),
            onTap: () => context.go("/privacy"),
          ),
        ],
      ),
    );
  }
}


import 'package:fase1/constants.dart';
import 'package:fase1/screens/details/tienda_de_puntos.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(color: kPrimaryColor),
            child: Text(
              "WasteSeparatorApp",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: const Text(
              "Reciclaje",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            leading: const Icon(Icons.restore_from_trash_rounded),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "Recolecciones",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            leading: const Icon(Icons.airport_shuttle_rounded),
            onTap: () {},
          ),
          //
          const Divider(color: Colors.grey),
          //
          const ListTile(
            title: Text(
              "PUNTOS",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
          ListTile(
            title: const Text(
              "Tienda de Puntos",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            leading: const Icon(Icons.store_sharp),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TiendaDePuntos(),
                  )
              );
            },
          ),
          ListTile(
            title: const Text(
              "Puntos",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            leading: const Icon(Icons.monetization_on_rounded),
            trailing: const Text(
              " \$ 5.000",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            onTap: () {},
          ),
          //
          const Divider(color: Colors.grey),
          //
          ListTile(
            title: const Text(
              "Inicio de Sesion",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            leading: const Icon(Icons.supervised_user_circle),
            onTap: () {},
          ),
          //
          const Divider(color: Colors.grey),
          //
          ListTile(
            title: const Text(
              "Ajustes",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            leading: const Icon(Icons.settings),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
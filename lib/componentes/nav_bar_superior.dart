import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  const NavBarSuperior({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          'images/imgs/pngwing.com.png',
          width: 40,
        ),
        const Text(
          'Programas',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        const Text(
          'Peliculas',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        const Text(
          'Mi lista',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}

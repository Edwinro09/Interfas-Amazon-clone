import 'package:flutter/material.dart';
import 'package:netflixclone/componentes/itemcuadrado.dart';
import 'package:netflixclone/componentes/itemredondo.dart';
import 'package:netflixclone/componentes/principal.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          const CartelPrincipal(),
          listahorizontal('avances', const ItemRedondo(), 9),
          const SizedBox(
            height: 10.0,
          ),
          listahorizontal('Tendencias', const IteamImg(), 5),
          const SizedBox(
            height: 10.0,
          ),
          listahorizontal('Volver a ver', const IteamImg(), 5),
          const SizedBox(
            height: 10.0,
          ),
          listahorizontal('Estrenos', const IteamImg(), 5),
          const SizedBox(
            height: 20.0,
          )
        ],
      ),
      bottomNavigationBar: naInferior(),
    );
  }

  BottomNavigationBar naInferior() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white24,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_add), label: ('Proximamente')),
        BottomNavigationBarItem(
            icon: Icon(Icons.download), label: ('Descargas')),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ('Mas')),
      ],
    );
  }

  Widget listahorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 12),
          child: Text(
            titulo,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }
}

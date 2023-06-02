import 'package:flutter/material.dart';
import 'package:netflixclone/componentes/nav_bar_superior.dart';

class CartelPrincipal extends StatelessWidget {
  const CartelPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        cabezera(),
        infodeseries(),
        botones(),
      ],
    );
  }

  Widget cabezera() {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.network(
              'https://elcomercio.pe/resizer/ULvgWhC9j_i5iCm9zPDUqINk68A=/1200x800/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/IRVNV2GW6RC3FDAUW4VOBOQEC4.jpg',
              height: 350,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: 350,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.black12, Colors.black])),
            ),
            const SafeArea(child: NavBarSuperior()),
          ],
        ),
      ],
    );
  }

  Widget infodeseries() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'Telenovelas',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 10.0),
        Text(
          'Suspenso insostenible',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 10.0),
        Text(
          'De suspenso',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 10.0),
        Text(
          'Adolocente',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
      ],
    );
  }

  Widget botones() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Column(
            children: <Widget>[
              Icon(Icons.check, color: Colors.white),
              Text(
                'Mi lista',
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.white),
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: const Text('Reproducir'),
          ),
          const Column(
            children: [
              Icon(Icons.info_outline, color: Colors.white),
              Text(
                'Informacion',
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
        ],
      ),
    );
  }
}

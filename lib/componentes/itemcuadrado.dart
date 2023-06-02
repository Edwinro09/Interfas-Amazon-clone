import 'package:flutter/material.dart';

class IteamImg extends StatelessWidget {
  const IteamImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          'https://m.media-amazon.com/images/M/MV5BNDhmODAxYzItYjRjNi00ZmI2LWIwMDktZTYwZWNiYWZhMTUzXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_FMjpg_UX1000_.jpg',
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 15,
        )
      ],
    );
  }
}

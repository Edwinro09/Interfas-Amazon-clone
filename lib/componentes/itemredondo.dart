import 'package:flutter/material.dart';

class ItemRedondo extends StatelessWidget {
  const ItemRedondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110),
                border: Border.all(
                  color: Colors.yellow,
                  width: 2,
                ),
              ),
              child: ClipOval(
                child: Image.network(
                  'https://s.yimg.com/ny/api/res/1.2/FGnGsXYpGxsNyqMpfffJlA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQyNw--/https://media.zenfs.com/es/tomatazos_56/d64efd19b532babd0b8d5f4ebc31f745',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.asset(
              'images/imgs/The-Witcher.png',
              width: 120,
            )
          ],
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}

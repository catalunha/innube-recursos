import 'package:flutter/material.dart';

class Decriptar extends StatelessWidget {
  const Decriptar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Decriptar uma mensagem',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(height: 20),
          Text(
            'Em desenvolvimento...',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.red),
          )
        ],
      ),
    );
  }
}

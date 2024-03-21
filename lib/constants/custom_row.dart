import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String labelText;

  const CustomRow(this.labelText);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(labelText), // Parametreyi burada kullanıyoruz
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CurlCommandWidget extends StatelessWidget {
  final String _command;

  const CurlCommandWidget(this._command);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Text(
        '\$ $_command',
        style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}

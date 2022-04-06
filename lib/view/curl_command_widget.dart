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
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(_command),
    );
  }
}

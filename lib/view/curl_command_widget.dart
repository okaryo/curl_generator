import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurlCommandWidget extends StatelessWidget {
  final String _command;
  final toolTipTextProvider = StateProvider.autoDispose<String>((_) => '');

  CurlCommandWidget(this._command);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
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
        ),
        Positioned(
          right: 16,
          child: Center(child: _buildCopyIcon()),
        ),
      ],
    );
  }

  Widget _buildCopyIcon() {
    return Consumer(builder: (context, ref, _) {
      final toolTipText = ref.watch(toolTipTextProvider);

      return IconButton(
        tooltip: toolTipText,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        onPressed: () {
          Clipboard.setData(ClipboardData(text: _command));
          ref.read(toolTipTextProvider.notifier).state = 'Copied!';
          Timer.periodic(const Duration(seconds: 1), (timer) {
            ref.read(toolTipTextProvider.notifier).state = '';
            timer.cancel();
          });
        },
        icon: const Icon(Icons.copy, color: Colors.white),
      );
    });
  }
}

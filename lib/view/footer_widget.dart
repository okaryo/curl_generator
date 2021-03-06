import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(text: 'Generated by '),
                TextSpan(
                  text: 'Flutter',
                  style: const TextStyle(color: Colors.blue, fontSize: 14),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch('https://flutter.dev');
                    },
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: 'Copyright ©${DateTime.now().year} '),
                TextSpan(
                  text: 'OKARYO',
                  style: const TextStyle(color: Colors.blue, fontSize: 16),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch('https://okaryo.io');
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

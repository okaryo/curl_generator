import 'package:curl_generator/controller/curl_controller.dart';
import 'package:curl_generator/view/curl_command_widget.dart';
import 'package:curl_generator/view/input_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurlGenerator extends ConsumerWidget {
  final _provider = curlProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final curl = ref.watch(_provider);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            CurlCommandWidget(curl.command),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            InputFieldWidget(),
          ],
        ),
      ),
    );
  }
}

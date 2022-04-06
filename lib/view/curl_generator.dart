import 'package:curl_generator/controller/curl_controller.dart';
import 'package:curl_generator/model/method.dart';
import 'package:curl_generator/model/url.dart';
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
            _buildCurlCommand(curl.command),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            Row(
              children: [
                _buildMethodDropDown(curl.method, ref),
                Expanded(child: _buildUrlInputField(curl.url, ref)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurlCommand(String command) {
    return TextField(
      controller: TextEditingController(text: command),
      readOnly: true,
    );
  }

  Widget _buildMethodDropDown(Method selectedMethod, WidgetRef ref) {
    final items = Method.values.map((method) {
      return DropdownMenuItem(child: Text(method.name), value: method.index);
    }).toList();

    return DropdownButton(
      items: items,
      value: selectedMethod.index,
      onChanged: (value) => ref.read(_provider.notifier).setMethodBy(value as int),
    );
  }

  Widget _buildUrlInputField(Url url, WidgetRef ref) {
    final controller = TextEditingController(text: url.string);
    controller.selection = TextSelection.fromPosition(
      TextPosition(offset: controller.text.length),
    );

    return TextField(
      controller: controller,
      onChanged: (value) => ref.read(_provider.notifier).setUrl(value),
    );
  }
}

import 'package:curl_generator/controller/curl_controller.dart';
import 'package:curl_generator/model/method/method.dart';
import 'package:curl_generator/model/url/url.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UrlWidget extends ConsumerWidget {
  final _provider = curlProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final curl = ref.watch(_provider);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        children: [
          _buildMethodDropDown(curl.method, ref),
          Expanded(child: _buildUrlInputField(curl.url, ref)),
        ],
      ),
    );
  }

  Widget _buildMethodDropDown(Method selectedMethod, WidgetRef ref) {
    final items = Method.values.map((method) {
      return DropdownMenuItem(child: Text(method.name), value: method.index);
    }).toList();

    return DropdownButtonHideUnderline(
      child: DropdownButton(
        alignment: AlignmentDirectional.center,
        items: items,
        value: selectedMethod.index,
        onChanged: (value) => ref.read(_provider.notifier).setMethodBy(value as int),
      ),
    );
  }

  Widget _buildUrlInputField(Url url, WidgetRef ref) {
    return TextFormField(
      initialValue: url.string,
      decoration: const InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(8),
      ),
      onChanged: (value) => ref.read(_provider.notifier).setUrl(value),
    );
  }
}

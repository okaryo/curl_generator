import 'package:curl_generator/view/body_field_widget.dart';
import 'package:curl_generator/view/headers_field_widget.dart';
import 'package:curl_generator/view/params_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Tab { params, headers, body }

final selectedTabProvider = StateProvider<Tab>((_) => Tab.params);

class OptionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(children: [
            _buildTab(Tab.params),
            _buildTab(Tab.headers),
            _buildTab(Tab.body),
          ]),
          _buildTabContent(),
        ],
      ),
    );
  }

  Widget _buildTabContent() {
    return Consumer(builder: (context, ref, _) {
      final selectedTab = ref.watch(selectedTabProvider);
      Widget selectedContent;
      switch (selectedTab) {
        case Tab.params:
          selectedContent = ParamsFieldWidget();
          break;
        case Tab.headers:
          selectedContent = HeadersFieldWidget();
          break;
        case Tab.body:
          selectedContent = BodyFieldWidget();
          break;
      }

      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
        ),
        child: selectedContent,
      );
    });
  }

  Widget _buildTab(Tab tab) {
    return Consumer(builder: (context, ref, _) {
      final selectedTab = ref.watch(selectedTabProvider);
      final isSelected = selectedTab == tab;

      return TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          minimumSize: MaterialStateProperty.all(Size.zero),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: () {
          ref.read(selectedTabProvider.notifier).state = Tab.values.firstWhere((value) => value == tab);
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : null,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5),
              topLeft: Radius.circular(5),
            ),
          ),
          child: Text(_toCamelCase(tab.name)),
        ),
      );
    });
  }

  String _toCamelCase(String value) {
    return value[0].toUpperCase() + value.substring(1, value.length);
  }
}

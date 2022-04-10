import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Tab { params, header, body }

final selectedTabProvider = StateProvider<Tab>((_) => Tab.params);

class OptionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(children: [
            _buildTab(Tab.params),
            _buildTab(Tab.header),
            _buildTab(Tab.body),
          ]),
          _buildTabContent(),
        ],
      ),
    );
  }

  Widget _buildTabContent() {
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
      child: Column(
        children: [
          _buildParamsContent(),
          _buildHeaderContent(),
          _buildBodyContent(),
        ],
      ),
    );
  }

  Widget _buildParamsContent() {
    return Consumer(builder: (context, ref, _) {
      final selectedTab = ref.watch(selectedTabProvider);
      final isSelected = selectedTab == Tab.params;

      return Visibility(
        visible: isSelected,
        child: Text('params'),
      );
    });
  }

  Widget _buildHeaderContent() {
    return Consumer(builder: (context, ref, _) {
      final selectedTab = ref.watch(selectedTabProvider);
      final isSelected = selectedTab == Tab.header;

      return Visibility(
        visible: isSelected,
        child: const Text('under development'),
      );
    });
  }

  Widget _buildBodyContent() {
    return Consumer(builder: (context, ref, _) {
      final selectedTab = ref.watch(selectedTabProvider);
      final isSelected = selectedTab == Tab.body;

      return Visibility(
        visible: isSelected,
        child: const Text('under development'),
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

import 'package:curl_generator/controller/curl_controller.dart';
import 'package:curl_generator/model/params/params.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ParamsFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildButtons(),
        const SizedBox(height: 8),
        _buildKeyValueTable(),
      ],
    );
  }

  Widget _buildButtons() {
    return Consumer(builder: (context, ref, _) {
      return Container(
        child: Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                ),
              ),
              onPressed: () => ref.read(curlProvider.notifier).addParam(),
              child: const Icon(Icons.add),
            ),
            const Divider(indent: 1),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
              ),
              onPressed: () => ref.read(curlProvider.notifier).removeLastParam(),
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildKeyValueTable() {
    return Consumer(builder: (context, ref, _) {
      final curl = ref.watch(curlProvider);
      final params = curl.url.params;

      return Table(
        border: TableBorder.all(
          color: Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        children: [
          _buildTableHeader(),
          ..._buildKeyValueTables(params),
        ],
      );
    });
  }

  TableRow _buildTableHeader() {
    return const TableRow(
      children: [
        SizedBox(
          height: 48,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Key', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        SizedBox(
          height: 48,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Value', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }

  List<TableRow> _buildKeyValueTables(Params params) {
    return params.values.asMap().entries.map((entry) {
      final index = entry.key;
      final param = entry.value;

      return TableRow(
        children: [
          _buildParamKeyTableCell(param.key, index),
          _buildParamValueTableCell(param.value, index),
        ],
      );
    }).toList();
  }

  Widget _buildParamKeyTableCell(String key, int index) {
    return Consumer(builder: (context, ref, _) {
      return TextFormField(
        initialValue: key,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(8),
        ),
        onChanged: (value) => ref.read(curlProvider.notifier).updateParamKey(value, index),
      );
    });
  }

  Widget _buildParamValueTableCell(String value, int index) {
    return Consumer(builder: (context, ref, _) {
      return TextFormField(
        initialValue: value,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(8),
        ),
        onChanged: (value) => ref.read(curlProvider.notifier).updateParamValue(value, index),
      );
    });
  }
}

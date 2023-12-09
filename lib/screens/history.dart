import 'package:flutter/material.dart';
import 'package:match_recorder/helpers/recordCard.dart';
import 'package:match_recorder/models/record_model.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    List<RecordModel> list = [
      (RecordModel()
        ..name = 'Record 1'
        ..path = '/path/to/record1'),
      (RecordModel()
        ..name = 'Record 1'
        ..path = '/path/to/record1'),
      (RecordModel()
        ..name = 'Record 1'
        ..path = '/path/to/record1'),
      (RecordModel()
        ..name = 'Record 1'
        ..path = '/path/to/record1'),
    ];
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(8),
            child: GridView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return RecordCard(
                    context: context,
                    item: list[index],
                    onEdit: () async {
                      if (Navigator.of(context).canPop()) {
                        Navigator.of(context).pop();
                      }
                      await Future.delayed(const Duration(milliseconds: 100));
                    });
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: 1.3),
            )));
  }
}

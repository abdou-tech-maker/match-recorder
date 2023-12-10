import 'package:flutter/material.dart';
import 'package:match_recorder/models/record_model.dart';

import '../services/isar_services.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    final service = IsarService();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: StreamBuilder<List<RecordModel>>(
          stream: service.listenToRecords(),
          builder: (context, snapshot) => GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            scrollDirection: Axis.horizontal,
            children: snapshot.hasData
                ? snapshot.data!.map((record) {
                    return ElevatedButton(
                      onPressed: () {
                        //  CourseDetailPage.navigate(context, course, service);
                      },
                      child: Text(record.name),
                    );
                  }).toList()
                : [],
          ),
        ),
      ),
    );
  }
}

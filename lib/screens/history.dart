import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:match_recorder/models/record_model.dart';

import '../helpers/recordCard.dart';
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
                builder: (context, snapshot) {
                  if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    log(snapshot.data?.length.toString() ?? "empty records");

                    return const CircularProgressIndicator();
                  }
                  if (snapshot.hasData && snapshot.data!.isEmpty) {
                    log(snapshot.data!.length.toString());

                    return const Center(
                      child: Text(
                        "You have no record yet ",
                        style: TextStyle(fontFamily: "Almarai", fontSize: 14),
                      ),
                    );
                  }

                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 8,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      log(snapshot.data!.length.toString());
                      return RecordCard(
                          context: context,
                          item: snapshot.data![index],
                          onEdit: () async {});
                    },
                  );
                })));
  }
}

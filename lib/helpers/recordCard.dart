// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:match_recorder/models/record_model.dart';

class RecordCard extends StatelessWidget {
  const RecordCard({
    super.key,
    required this.context,
    required this.item,
    required this.onEdit,
  });

  final BuildContext context;
  final RecordModel? item;
  final void Function()? onEdit;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/images/pdf.webp",
                          fit: BoxFit.cover,
                          height: 100,
                        ),
                      ))),
            ),
            const SizedBox(height: 4),
            Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                item?.name ?? "",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                    fontFamily: "Almarai",
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

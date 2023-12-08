// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                  child: Container(
                      width: 130,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey[200],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          "assets/images/pdf.webp",
                          fit: BoxFit.cover,
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
                style: GoogleFonts.almarai(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "دج",
                  style: GoogleFonts.almarai(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  item?.name ?? "0.0",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF018D36),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Text(
                      item?.name ?? "",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.almarai(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2.05,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Sold",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.almarai(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

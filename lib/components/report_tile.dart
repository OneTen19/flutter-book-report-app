import 'package:flutter/material.dart';

import '../models/report.dart';

class ReportTile extends StatelessWidget {
  Report report;

  ReportTile({super.key, required this.report});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // book image
            ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                child: Image.asset(
                  report.imagePath,
                  fit: BoxFit.fill,
                )),

            // description

            // price + detail
          ],
        ),
      ),
    );
  }
}

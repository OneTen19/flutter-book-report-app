import 'package:flutter/material.dart';

import '../models/report.dart';

class ReportTile extends StatelessWidget {
  Report report;

  ReportTile({super.key, required this.report});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // book image
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    child: Image.asset(
                      report.imagePath,
                    ),
                  ),
                ),


                // title
                Text(
                  report.title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
            
                // description
                Text(report.description),
            
                // price
                Text(report.price),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

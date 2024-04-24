// 메인 페이지
// 독후감을 작성한 책들을 보여주는 페이지

import 'package:flutter/material.dart';
import 'package:flutter_book_report_app/components/report_tile.dart';

import '../models/report.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey.shade600,
              ),
            ],
          ),
        ),

        // my reports
        Padding(
          padding:
              const EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'My Reports 🔥',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'See all',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),

        // report card
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                // create a report
                Report report = Report(
                    title: '천 원을 경영하라',
                    price: '10,000',
                    imagePath: 'assets/images/book01.jpg',
                    description: '천 원을 경영하라 대충 설명');
                return ReportTile(
                  report: report,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

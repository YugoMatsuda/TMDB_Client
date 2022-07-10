import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MovieDetailTitleSection extends StatelessWidget {
  const MovieDetailTitleSection({
    Key? key,
    required Size screenSize,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
  }): _screenSize = screenSize, super(key: key);

  final String title;
  final double? voteAverage;
  final Size _screenSize;
  final String? releaseDate;

  @override
  Widget build(BuildContext context) {
    final score = (voteAverage ?? 0) / 10;
    final percent = (voteAverage ?? 0) * 10;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: _screenSize.width * 0.7,
                child: Text(title,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Text('Release', style: const TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(width: 8),
                    Text(releaseDate ?? '', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  ],
                ),
              )
            ],
          ),
          const Spacer(),
          CircularPercentIndicator(
            radius: 50.0,
            lineWidth: 6.0,
            animation: true,
            percent: score,
            center: Text(
              "$percent",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.green,
          )
        ],
      ),
    );
  }
}
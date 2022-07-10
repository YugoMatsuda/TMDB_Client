import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class MovieDetailOverviewSection extends StatelessWidget {
  const MovieDetailOverviewSection({Key? key, this.overview})
      : super(key: key);
  final String? overview;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: ReadMoreText(
            overview ?? '',
            style: TextStyle(color: Theme.of(context).textTheme.bodyText1?.color),
            colorClickableText: Colors.blue,
            trimLines: 3,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
          ),
        ),
        const Divider()
      ],
    );
  }
}

import 'dart:ui';

class ConstantsWidgetSize {
  final Size screenSize;
  ConstantsWidgetSize({required this.screenSize});
  late double normalMovieImageWidth =  screenSize.width / 3 - 16;
  late double normalMovieImageHeight =  normalMovieImageWidth * 1.5;
  late double minMovieImageWidth =  screenSize.width / 3 - 48;
  late double minMovieImageHeight =  minMovieImageWidth * 1.5;
}
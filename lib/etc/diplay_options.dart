enum DisplayOption {
  threeGrid,
  fourGrid,
  list
}

extension DisplayOptionExtension on DisplayOption {
  String get name {
    switch (this) {
      case DisplayOption.threeGrid:
        return 'Three Grid';
      case DisplayOption.fourGrid:
        return 'Four Grid';
      case DisplayOption.list:
        return 'List';
    }
  }
}
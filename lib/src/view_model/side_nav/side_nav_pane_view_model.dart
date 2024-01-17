import 'package:fluent_ui/fluent_ui.dart';

class SizeNavPaneViewModel extends ChangeNotifier {
  int _currentPageIndex = 0;

  int get currentPageIndex => _currentPageIndex;

  set currentPageIndex(int value) {
    _currentPageIndex = value;
    notifyListeners();
  }
}

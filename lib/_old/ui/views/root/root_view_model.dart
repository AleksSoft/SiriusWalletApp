import 'package:stacked/stacked.dart';

class RootViewModel extends BaseViewModel {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  updatePage(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  bool isSelected(int index) => _currentIndex == index;
}

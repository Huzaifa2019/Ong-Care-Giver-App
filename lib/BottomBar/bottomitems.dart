import 'dart:async';

enum NavBarItem { HOME, Game, Stream, Wallet, PROFILE }

class BottomNavBarBloc {
  final StreamController<NavBarItem> _navBarController =
      StreamController<NavBarItem>.broadcast();

  NavBarItem defaultItem = NavBarItem.HOME;

  bool bottomnotshow = false;
  Stream<NavBarItem> get itemStream => _navBarController.stream;

  void pickItem(int i) {
    switch (i) {
      case 0:
        _navBarController.sink.add(NavBarItem.HOME);
        break;
      case 1:
        _navBarController.sink.add(NavBarItem.Game);
        break;
      case 2:
        _navBarController.sink.add(NavBarItem.Stream);
        break;
      case 3:
        bottomnotshow = true;
        _navBarController.sink.add(NavBarItem.Wallet);
        break;
      case 4:
        _navBarController.sink.add(NavBarItem.PROFILE);
        break;
    }
  }

  close() {
    _navBarController?.close();
  }
}

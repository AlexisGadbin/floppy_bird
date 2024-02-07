import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:floppy_bird/game/scenes/game_screen.dart';
import 'package:floppy_bird/game/scenes/main_screen.dart';

class GameManager extends FlameGame with PanDetector {
  late MainScreen _mainScreen;
  late GameScreen _gameScreen;

  @override
  Future<void> onLoad() async {
    _mainScreen = MainScreen(() {
      remove(_mainScreen);
      add(_gameScreen);
    });
    add(_mainScreen);
    _gameScreen = GameScreen();
    // _mainScreen = MainScreen(() {
    //   remove(_mainScreen);
    //   add(_gameScreen);
    // });
    // _gameScreen = GameScreen();
    // add(_gameScreen);
  }

  @override
  void onPanStart(DragStartInfo info) {
    _mainScreen.onPanStart(info);
  }
}

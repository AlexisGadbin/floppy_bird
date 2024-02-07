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
  }

  @override
  void onPanStart(DragStartInfo info) {
    if (_mainScreen.isMounted) {
      _mainScreen.onPanStart(info);
    } else {
      _gameScreen.onPanStart(info);
    }
  }

  void gameOver() {
    remove(_gameScreen);
    _gameScreen = GameScreen();

    add(_mainScreen);
  }
}

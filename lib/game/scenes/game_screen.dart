import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:floppy_bird/game/scenes/game_background.dart';

class GameScreen extends Component {
  late GameBackground _gameBackground;

  @override
  Future<void> onLoad() async {
    _gameBackground = GameBackground();
    add(_gameBackground);
  }

  void onPanStart(DragStartInfo info) {
    _gameBackground.onPanStart(info);
  }
}

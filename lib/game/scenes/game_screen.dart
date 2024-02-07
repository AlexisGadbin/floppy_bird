import 'package:flame/components.dart';
import 'package:floppy_bird/game/scenes/game_background.dart';

class GameScreen extends Component {
  @override
  Future<void> onLoad() async {
    add(GameBackground());
  }
}

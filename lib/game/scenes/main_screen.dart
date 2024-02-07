import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:floppy_bird/game/ui/background.dart';
import 'package:floppy_bird/game/ui/start_text.dart';

class MainScreen extends Component {
  final Function _onStartClicked;

  MainScreen(this._onStartClicked);

  @override
  Future<void> onLoad() async {
    add(Background());
    add(StartText());
  }

  void onPanStart(DragStartInfo info) {
    if (isMounted) _onStartClicked();
  }
}

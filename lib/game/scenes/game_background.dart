import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:floppy_bird/game/actors/bird.dart';
import 'package:floppy_bird/game/ui/background.dart';
import 'package:floppy_bird/game/ui/ground.dart';
import 'package:floppy_bird/game/ui/pipe.dart';

class GameBackground extends Component with HasCollisionDetection {
  late Bird _bird;
  @override
  Future<void> onLoad() async {
    add(Background());
    add(Pipe());
    add(Pipe(reversed: true));
    add(Ground(1));
    add(Ground(2));
    _bird = Bird();
    add(_bird);
  }

  void onPanStart(DragStartInfo info) {
    _bird.onPanStart(info);
  }
}

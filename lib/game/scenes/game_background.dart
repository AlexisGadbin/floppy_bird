import 'package:flame/components.dart';
import 'package:floppy_bird/game/actors/bird.dart';
import 'package:floppy_bird/game/ui/background.dart';
import 'package:floppy_bird/game/ui/ground.dart';
import 'package:floppy_bird/game/ui/pipe.dart';

class GameBackground extends Component {
  @override
  Future<void> onLoad() async {
    add(Background());
    add(Pipe());
    add(Pipe(reversed: true));
    add(Ground(1));
    add(Ground(2));
    add(Bird());
  }
}

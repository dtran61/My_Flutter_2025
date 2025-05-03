import 'dart:async';

import 'package:flutter_application_2025/data/model/song.dart';
import 'package:flutter_application_2025/data/repository/repository.dart';

class MusicAppViewModel {
  StreamController<List<Song>> songStream = StreamController();

  void loadSongs() {
    final repository = DefaultRepository();
    repository.loadData().then((value) => songStream.add(value!));
  }
}

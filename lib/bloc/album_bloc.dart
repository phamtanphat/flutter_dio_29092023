import 'dart:async';
import 'package:flutter_dio_29092023/data/album.dart';
import 'package:flutter_dio_29092023/repository/album_repository.dart';
import 'album_event.dart';

class AlbumBloc {
  AlbumRepository albumRepository;
  StreamController<AlbumEventBase> eventController = StreamController();
  StreamController<List<Album>> albumController = StreamController();

  AlbumBloc(this.albumRepository) {
    eventController.stream.listen((event) {
      switch (event.runtimeType) {
        case GetAlbumEvent:
          getAlbumFromId(event as GetAlbumEvent);
          break;
      }
    });
  }

  void getAlbumFromId(GetAlbumEvent event) {
    albumRepository
        .requestAlbumFromId(event.albumId)
        .then((value) {
          print(value.toString());
        })
        .catchError((error) {
          print(error.toString());
        });
  }
}

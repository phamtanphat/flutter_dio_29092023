import 'package:flutter/material.dart';
import 'package:flutter_dio_29092023/bloc/album_bloc.dart';
import 'package:flutter_dio_29092023/bloc/album_event.dart';
import 'package:flutter_dio_29092023/repository/album_repository.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({super.key});

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {

  late AlbumBloc bloc;
  late AlbumRepository repository;

  @override
  void initState() {
    super.initState();
    repository = AlbumRepository();
    bloc = AlbumBloc(repository);
    bloc.getAlbumFromId(GetAlbumEvent("1"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo dio"),
      ),
      body: Container(),
    );
  }
}

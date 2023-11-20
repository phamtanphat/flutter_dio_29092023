import 'package:flutter/material.dart';
import 'package:flutter_dio_29092023/bloc/album_bloc.dart';
import 'package:flutter_dio_29092023/bloc/album_event.dart';
import 'package:flutter_dio_29092023/data/album.dart';
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
      body: Container(
        constraints: BoxConstraints.expand(),
        child: StreamBuilder<List<Album>>(
          initialData: [],
          stream: bloc.albumController.stream,
          builder: (context, snapshot){
            if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }

            if (snapshot.hasData) {
              if (snapshot.connectionState == ConnectionState.active) {
                return ListView.builder(
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (context, index) {
                        var album = snapshot.data?[index];
                        if (album == null) return Container();
                        return Card(
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(album.url),
                            ),
                            title: Text(album.title),
                          ),
                        );
                    }
                );
              }
            }

            return Container();
          },
        ),
      ),
    );
  }
}

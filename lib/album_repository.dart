import 'package:dio/dio.dart';
import 'package:flutter_dio_29092023/dio_client.dart';

class AlbumRepository {
  Dio dio = DioClient.getInstance().getDio();

  Future requestAlbumFromId(String albumId) {
      return dio.get("/photos", queryParameters: {
        "albumId": albumId
      });
  }
}
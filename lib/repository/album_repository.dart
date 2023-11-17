import 'package:dio/dio.dart';
import 'package:flutter_dio_29092023/data/dio_client.dart';

class AlbumRepository {
  final Dio _dio = DioClient.getInstance().getDio();

  Future<Response<List<dynamic>>> requestAlbumFromId(String albumId) {
      return _dio.get("/photos", queryParameters: {
        "albumId": albumId
      });
  }
}
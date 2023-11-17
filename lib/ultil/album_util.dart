import 'package:flutter_dio_29092023/data/album.dart';

class AlbumUtil {
  static Album parseJSONToAlbum(Map<String, dynamic> json) {
    return Album(
        json["albumId"] ?? "",
        json["id"] ?? "",
        json["title"] ?? "",
        json["url"] ?? "",
        json["thumbnailUrl"] ?? ""
    );
  }
}
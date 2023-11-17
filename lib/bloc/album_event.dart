abstract class AlbumEventBase {}

class GetAlbumEvent extends AlbumEventBase{
  String albumId;

  GetAlbumEvent(this.albumId);
}
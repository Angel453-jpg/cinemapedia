import 'package:cinemapedia/domain/entities/video.dart';
import 'package:cinemapedia/infrastructure/models/models.dart';

class VideoMapper {
  static Video movieDbVideoToEntity(Result movieDbVideo) => Video(
    id: movieDbVideo.id,
    name: movieDbVideo.name,
    youtubeKey: movieDbVideo.key,
    publishedAt: movieDbVideo.publishedAt,
  );
}

class AnimeModel {
  late int malId;
  late String title;
  late String titleJapanese;
  late String type;
  late String status;
  late String aired;
  late String duration;
  late String source;
  late String synopsis;
  late int episodes;
  late double score;
  late Images images;
  late String trailer;
  late List<Genre> genres;

  AnimeModel({
    required this.malId,
    required this.title,
    required this.titleJapanese,
    required this.type,
    required this.status,
    required this.aired,
    required this.duration,
    required this.source,
    required this.synopsis,
    required this.episodes,
    required this.score,
    required this.images,
    required this.trailer,
    required this.genres,
  });

  factory AnimeModel.fromJson(Map<String, dynamic> json){
   return AnimeModel(
       malId: json['mal_id'],
       title: json['title'],
       titleJapanese: json['title_japanese'],
       type: json['type'],
       status: json['status'],
       aired: json['aired']['string'],
       duration: json['duration'],
       source: json['source'],
       synopsis: json['synopsis'],
       episodes: json['episodes'],
       score: json['score'],
       images: Images.fromJson(json['images']['jpg']),
       trailer: json['embed_url'],
       genres: Genre.fromList(json['genres']),
    );
  }
}

class Images {
  late String imageUrl;
  late String smallImage;
  late String largeImage;

  Images({required this.imageUrl, required this.smallImage, required this.largeImage});
  factory Images.fromJson(Map<String, dynamic> images) =>
      Images(
        imageUrl: images['image_url'],
        smallImage: images['small_image_url'],
        largeImage: images['large_image_url']
      );
}

class Genre {
  late int malId;
  late String type;
  late String name;

  Genre({required this.malId, required this.type, required this.name});
  factory Genre.fromJson(Map<String, dynamic> genres) =>
      Genre(malId: genres['mal_id'], type: genres['type'], name: genres['name']);

  static List<Genre> fromList(List<Map<String, dynamic>> genres) =>
      genres.map<Genre>((e) => Genre.fromJson(e)).toList();
}
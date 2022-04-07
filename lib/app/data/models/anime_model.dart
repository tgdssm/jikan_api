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
  late double score;
  late Images images;
  late List<Genre> genres;
  int? episodes;
  String? trailer;

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
    required this.score,
    required this.images,
    required this.genres,
    this.episodes,
    this.trailer,
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
       trailer: json['trailer']['embed_url'],
       genres: Genre.fromJsonToList(json['genres']),
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
  factory Genre.fromJson(Map<String, dynamic> genre) =>
      Genre(malId: genre['mal_id'], type: genre['type'], name: genre['name']);

  static List<Genre> fromJsonToList(List<dynamic> genres) =>
      genres.map<Genre>((genre) => Genre.fromJson(genre)).toList();
}
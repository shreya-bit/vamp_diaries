class Post{
  final int id;
  final String character;
  final String actor;
  final int episodeCount;
  final DateTime createdAt;
  final DateTime updatedAt;

  Post({required this.id,
    required this.character,
    required this.actor,
    required this.episodeCount,
    required this.createdAt,
    required this.updatedAt});

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    id: json["id"],
    character: json["character"],
    actor: json["actor"],
    episodeCount: json["episodeCount"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
  );
}
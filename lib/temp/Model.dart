// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    required this.id,
    required this.character,
    required this.actor,
    required this.episodeCount,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String character;
  String actor;
  int episodeCount;
  DateTime createdAt;
  DateTime updatedAt;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    id: json["id"],
    character: json["character"],
    actor: json["actor"],
    episodeCount: json["episodeCount"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "character": character,
    "actor": actor,
    "episodeCount": episodeCount,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
  };
}

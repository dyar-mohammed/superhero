import 'package:superhero/models/search_character/appearance.dart';
import 'package:superhero/models/search_character/biography.dart';
import 'package:superhero/models/search_character/connections.dart';
import 'package:superhero/models/search_character/images.dart';
import 'package:superhero/models/search_character/power_states.dart';
import 'package:superhero/models/search_character/work.dart';

class HeroInfo {
  final String id;
  final String name;
  final Powerstats powerstats;
  final Appearance appearance;
  final Biography biography;
  final Work work;
  final Connections connections;
  final Images images;
  HeroInfo({
    required this.id,
    required this.name,
    required this.powerstats,
    required this.appearance,
    required this.biography,
    required this.work,
    required this.connections,
    required this.images,
  });

  factory HeroInfo.fromJson(Map<String, dynamic> json) => HeroInfo(
        id: json["id"],
        name: json["name"],
        powerstats: Powerstats.fromJson(json["powerstats"]),
        appearance: Appearance.fromJson(json["appearance"]),
        biography: Biography.fromJson(json["biography"]),
        work: Work.fromJson(json["work"]),
        connections: Connections.fromJson(json["connections"]),
        images: Images.fromJson(json["image"]),
      );
}

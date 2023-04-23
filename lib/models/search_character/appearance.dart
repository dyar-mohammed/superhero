class Appearance {
  final String gender;
  final String race;
  final List<dynamic> height;
  final List<dynamic> weight;
  final String eyeColor;
  final String hairColor;

  Appearance({
    required this.gender,
    required this.race,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hairColor,
  });

  factory Appearance.fromJson(Map<String, dynamic> json) => Appearance(
        gender: json["gender"] == null ? '' : json["gender"],
        race: json["race"] == null ? '' : json["race"],
        height: json["height"] == null
            ? []
            : List<dynamic>.from(json["height"].map((x) => x)),
        weight: json["weight"] == null
            ? []
            : List<dynamic>.from(json["weight"].map((x) => x)),
        eyeColor: json["eye-color"],
        hairColor: json["hair-color"],
      );
}

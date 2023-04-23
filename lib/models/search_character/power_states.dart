class Powerstats {
  final int intelligence;
  final int strength;
  final int speed;
  final int durability;
  final int power;
  final int combat;
  Powerstats({
    required this.intelligence,
    required this.strength,
    required this.speed,
    required this.durability,
    required this.power,
    required this.combat,
  });

  factory Powerstats.fromJson(Map<String, dynamic> json) => Powerstats(
        intelligence: json['intelligence'] == "null"
            ? 0
            : int.parse(json["intelligence"]),
        strength: json['strength'] == "null" ? 0 : int.parse(json["strength"]),
        speed: json['speed'] == "null" ? 0 : int.parse(json["speed"]),
        durability:
            json['durability'] == "null" ? 0 : int.parse(json["durability"]),
        power: json['power'] == "null" ? 0 : int.parse(json["power"]),
        combat: json['combat'] == "null" ? 0 : int.parse(json["combat"]),
      );
}

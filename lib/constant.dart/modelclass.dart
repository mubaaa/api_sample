// To parse this JSON data, do
//
//     final characters = charactersFromJson(jsonString);

import 'dart:convert';

import 'package:json_serializable/builder.dart';

List<Characters> charactersFromJson(String str) =>
    List<Characters>.from(json.decode(str).map((x) => Characters.fromJson(x)));

String charactersToJson(List<Characters> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
    
class Characters {
  Characters({
    required this.charId,
    required this.name,
    required this.birthday,
    required this.occupation, 
    required this.img,
    required this.status,
    required this.nickname,
    required this.appearance,
    required this.portrayed,
    required this.category,
    required this.betterCallSaulAppearance,
  });

  int charId;
  String name;
  String birthday;
  List<String> occupation;
  String img;
  String status;
  String nickname;
  List<int> appearance;
  String portrayed;
  String category;
  List<int> betterCallSaulAppearance;

  factory Characters.fromJson(Map<String, dynamic> json) => Characters(
        charId: json["char_id"],
        name: json["name"],
        birthday: json["birthday"],
        occupation: List<String>.from(json["occupation"].map((x) => x)),
        img: json["img"],
        status: json["status"],
        nickname: json["nickname"],
        appearance: List<int>.from(json["appearance"].map((x) => x)),
        portrayed: json["portrayed"],
        category: json["category"],
        betterCallSaulAppearance:
            List<int>.from(json["better_call_saul_appearance"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "char_id": charId,
        "name": name,
        "birthday": birthday,
        "occupation": List<dynamic>.from(occupation.map((x) => x)),
        "img": img,
        "status": status,
        "nickname": nickname,
        "appearance": List<dynamic>.from(appearance.map((x) => x)),
        "portrayed": portrayed,
        "category": category,
        "better_call_saul_appearance":
            List<dynamic>.from(betterCallSaulAppearance.map((x) => x)),
      };
}

// enum Category { BREAKING_BAD, BREAKING_BAD_BETTER_CALL_SAUL }

// final categoryValues = EnumValues({
//     "Breaking Bad": Category.BREAKING_BAD,
//     "Breaking Bad, Better Call Saul": Category.BREAKING_BAD_BETTER_CALL_SAUL
// });

// enum Status { PRESUMED_DEAD, ALIVE, DECEASED }

// final statusValues = EnumValues({
//     "Alive": Status.ALIVE,
//     "Deceased": Status.DECEASED,
//     "Presumed dead": Status.PRESUMED_DEAD
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap={};

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }

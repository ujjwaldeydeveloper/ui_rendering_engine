import 'package:json_annotation/json_annotation.dart';

part 'cuisines.g.dart';

@JsonSerializable()
class Cuisines {
  String? type;
  String? text;
  String? image;

  Cuisines({this.type, this.text, this.image});

  factory Cuisines.fromJson(Map<String, dynamic> json) => _$CuisinesFromJson(json);

  Map<String, dynamic> toJson() => _$CuisinesToJson(this);
}

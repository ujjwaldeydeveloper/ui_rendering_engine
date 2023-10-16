import 'package:json_annotation/json_annotation.dart';

import 'collections.dart';
import 'cuisines.dart';
part 'horizontal_list.g.dart';

@JsonSerializable()
class HorizontalList {
  List<Collections>? collections;
  List<Cuisines>? cuisines;

  HorizontalList({this.collections, this.cuisines});

  factory HorizontalList.fromJson(Map<String, dynamic> json) => _$HorizontalListFromJson(json);

  Map<String, dynamic> toJson() => _$HorizontalListToJson(this);
}

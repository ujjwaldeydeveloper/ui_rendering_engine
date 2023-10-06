
import 'package:json_annotation/json_annotation.dart';

part 'app_model.g.dart';

@JsonSerializable()
class App {
    String theme;

    App({
        required this.theme,
    });

     factory App.fromJson(Map<String, dynamic> json) =>
      _$AppFromJson(json);

      Map<String, dynamic> toJson() => _$AppToJson(this);

}
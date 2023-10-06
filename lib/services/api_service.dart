import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ui_rendering_engine/constants.dart';

import '../model/render_model.dart';

class ApiService {
  Future<RenderModel?> getRenderData() async {
    try {
      final url = Uri.parse(ApiConstants.baseUrl + ApiConstants.endPoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        RenderModel model = RenderModel.fromJson(
            jsonDecode(response.body) as Map<String, dynamic>);
        return model;
      }
    } catch (e) {
      throw Exception('API failed: $e');
    }
    return null;
  }
}

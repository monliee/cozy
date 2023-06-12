import 'dart:convert';

import 'package:cozy/models/space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  Future<List<Space>> getRecomendedSpace() async {
    final Uri url =
        Uri.parse('https://bwa-cozy-api.vercel.app/recommended-spaces');
    final response = await http.get(url);

    print(response.statusCode);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();

      return spaces;
    } else {
      return <Space>[];
    }
  }
}

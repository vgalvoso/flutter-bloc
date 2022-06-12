import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pos/model/items_model.dart';

class MainPageFunctions {
  Future<List<Items>> fetchItems() async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/api/items'));

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      return body.map<Items>((json) => Items.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load items');
    }
  }

  Future<List<Items>> fetchItemsbyCategory(String category) async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/api/items/$category'));

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      return body.map<Items>((json) => Items.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load items');
    }
  }

  toPage(BuildContext context, Widget widget) {
    return () => Navigator.push(
        context, MaterialPageRoute(builder: (context) => widget));
  }

  toHome(BuildContext context) {
    return () => Navigator.pop(context);
  }
}

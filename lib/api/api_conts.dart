import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:reddit_clone/models/reddit_model.dart';

String _baseUrl = "https://www.reddit.com/r/TechNewsToday/top.json?count=20";

class ApiBase {
  static Future<Reddit> get() async {
    final response = await http.get(_baseUrl);
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      var dataRes = Reddit.fromJson(jsonResponse as Map<String, dynamic>);
      return dataRes;
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }
}

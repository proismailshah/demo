import 'dart:convert';

import 'package:apprentise_day_2/models/explore_data.dart';
import 'package:apprentise_day_2/models/friends_feed.dart';
import 'package:flutter/services.dart';

class MockClassForApi {
  static Future<Autogenerated> getExploreData() async {
    final source = await rootBundle
        .loadString('assets/sample_data/sample_explore_recipes.json');
    final responce = jsonDecode(source);
    print(responce);
    final data = Autogenerated.fromJson(responce);
    return data;
  }

  static Future<FriendFeedt> getFriendFeeds() async {
    final source = await rootBundle
        .loadString('assets/sample_data/sample_friends_feed.json');
    final responce = json.decode(source);
    print(responce);
    final data = FriendFeedt.fromJson(responce);
    // print(data.feed);
    return data;
  }

  static Future<Recipes> getRecips() async {
    final source =
        await rootBundle.loadString('assets/sample_data/sample_recipes.json');
    print(source);
    final responce = json.decode(source);
    final data = Recipes.fromJson(responce);
    return data;
  }
}

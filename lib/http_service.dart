import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:vamp_diaries/post_models.dart';

class HttpService {
  final String postsUrl = "https://vampire-diaries.herokuapp.com/api/characters?key=6e48e28e-fd47-443e-8a22-c9a5d4251ab1";
  static Future<List<Post>> getPosts() async {
    var response = await http.get(Uri.parse("https://vampire-diaries.herokuapp.com/api/characters?key=6e48e28e-fd47-443e-8a22-c9a5d4251ab1"));

    if (response.statusCode ==200){
     List<dynamic> data = jsonDecode(response.body);
     List<Post> posts = data.map((dynamic item) => Post.fromJson(item)).toList();
     return posts;
    }//if
    else {throw Exception();}
  }}
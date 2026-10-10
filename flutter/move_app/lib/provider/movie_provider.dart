import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MovieProvider extends ChangeNotifier {
  // for you movies
  List<dynamic> _forYouMovies = [];
  List<dynamic> get forYouMovies => _forYouMovies;

  // action movies
  List<dynamic> _actionMovies = [];
  List<dynamic> get actionMovies => _actionMovies;

  // drama movies
  List<dynamic> _dramaMovies = [];
  List<dynamic> get dramaMovies => _dramaMovies;

  // comedy movies
  List<dynamic> _comedyMovies = [];
  List<dynamic> get comedyMovies => _comedyMovies;

  // animation movies
  List<dynamic> _animationMovies = [];
  List<dynamic> get animationMovies => _animationMovies;

  // loading state
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Future<void> fetchMovies() async {
    final response = await http.get(Uri.parse(
        "https://gist.githubusercontent.com/Ahmadzuainat/83e3cfaa726b78f5ce92d57cfe3490bb/raw"));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      // for you movies
      _forYouMovies = data["foryou"] ?? [];

      // action movies
      _actionMovies = data["action"] ?? [];

      // drama movies
      _dramaMovies = data["drama"] ?? [];

      // comedy movies
      _comedyMovies = data["comedy"] ?? [];

      // animation movies
      _animationMovies = data["animation"] ?? [];

      _isLoading = false;
      notifyListeners();
    } else {
      throw Exception("Failed to load movies");
    }
  }
}
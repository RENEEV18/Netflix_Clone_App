import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/Strings.dart';
import 'package:netflix_app/infrastructure/api_key.dart';

class ApiEndPoints{
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apiKey";
}
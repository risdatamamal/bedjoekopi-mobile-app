import 'dart:convert';
import 'dart:io';

import 'package:coffeeshop/models/models.dart';
import 'package:http/http.dart' as http;

part 'user_services.dart';
part 'coffee_services.dart';
part 'transaction_services.dart';

String baseURL = "http://192.168.18.10:8000/api/";

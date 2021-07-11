import 'dart:convert';
import 'dart:io';

import 'package:coffeeshop/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

part 'user_services.dart';
part 'coffee_services.dart';
part 'transaction_services.dart';

String baseURL = "http://297e3b1613ff.ngrok.io/api/";

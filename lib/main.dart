import 'package:flutter/material.dart';
import 'package:team_taskk/app/ChatApp.dart';
import 'package:team_taskk/core/services/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeServices();
  runApp(const ChatApp());
}


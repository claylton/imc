import 'package:flutter/material.dart';
import 'package:imc/ui/android/my_material_app.dart';
import 'package:imc/ui/ios/my_cupertino_app.dart';
import 'dart:io' show Platform;


void main() => runApp(Platform.isIOS ? const MyCupertinoApp() : const MyMaterialApp());
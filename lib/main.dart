import 'core/di/dependency_injection.dart';
import 'core/routes/app_router.dart';
import 'package:flutter/material.dart';

import 'campuspay.dart';



void main() {
  setupGetIt();
  runApp( Campuspay(appRouter: AppRouter(),));
}

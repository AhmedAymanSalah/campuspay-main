import 'package:campuspay/core/utils/api_service.dart';

import 'core/routes/app_router.dart';
import 'package:flutter/material.dart';

import 'campuspay.dart';



void main() {
  ApiService.init();
  runApp( Campuspay(appRouter: AppRouter(),));
}

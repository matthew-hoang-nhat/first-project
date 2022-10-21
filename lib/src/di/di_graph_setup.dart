import 'dart:developer';
import 'dart:io';
import 'package:first_project/src/blocs/app_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../utils/app_routers.dart';
import '../utils/app_shared.dart';
import '../utils/app_variable.dart';

part 'register_api_module.dart';
part 'register_core_module.dart';
part 'register_manager_module.dart';
part 'register_repositories_module.dart';

Future<void> setupDependenciesGraph() async {
  await _registerCoreModule();
}

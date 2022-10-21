part of 'di_graph_setup.dart';

Future<void> _registerCoreModule() async {
  getIt.registerSingletonAsync<AppShared>(
    () async {
      final Directory directory = await getApplicationDocumentsDirectory();
      Hive.init(directory.path);
      final Box box = await Hive.openBox(AppShared.keyBox);

      return AppShared(box);
    },
  );

  await getIt.allReady();
  getIt.registerSingleton<AppRouter>(AppRouter(AppBloc()));

  // Network
  // getIt.registerSingleton<DioHttpClient>(
  //     DioHttpClient('https://www.facebook.com/ngacnhii/'));
}

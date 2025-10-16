import 'package:get_it/get_it.dart';
import '../../data/datasources/local/database_helper.dart';
// import '../../data/datasources/remote/auth_service.dart'; // Temporairement désactivé

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Data sources
  getIt.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper.instance);

  // TODO: Add AuthService when Firebase is properly configured
  // getIt.registerLazySingleton<AuthService>(() => AuthService());

  // TODO: Add repositories when created
  // TODO: Add use cases when created
  // TODO: Add view models when created
}

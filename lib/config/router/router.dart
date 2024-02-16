import 'package:counter_app/config/router/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'router.g.dart';

// GoRouter configuration
@riverpod
GoRouter router(RouterRef ref) {
  final router = GoRouter(
    initialLocation: '/',
    routes: $appRoutes,
  );

  return router;
}

/*      GoRoute(
        path = '/',
        builder = (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path = '/signin',
        builder = (context, state) => const SignInGoogle(),
      ),
      GoRoute(
        path = '/counter',
        builder = (context, state) => const CounterScreen(),
      ), */

import 'package:counter_app/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
//  final String id;
  const HomeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

@TypedGoRoute<CounterRoute>(path: '/counter/:id')
class CounterRoute extends GoRouteData {
  final String id;
  const CounterRoute(this.id);
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CounterScreen(id);
  }
}

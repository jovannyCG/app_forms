import 'package:forms_app/screens/cubit_screen.dart';
import 'package:forms_app/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/',
    builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(path: '/cubits',
    builder: (context, state) => const CubitScreen(),
    ),
  ]
);
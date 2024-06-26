import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbars',
      builder: (context, state) => const SnackBarScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => const AnimatedContainerScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      builder: (context, state) => const ControlsScreen(),
    ),
    GoRoute(
      path: '/tutorial',
      builder: (context, state) => const AppTutorialScreen(),
    ),
    GoRoute(
      path: '/infinite',
      builder: (context, state) => const InfiniteScroll(),
    ),
  ],
);

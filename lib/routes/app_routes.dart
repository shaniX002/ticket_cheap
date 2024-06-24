// Assuming MyAppRouter is in a separate file like 'routes/app_routes.dart'
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_cheap/view/ticket.dart';
import '../view/futures/bottom_nav.dart';
import '../view/futures/onboarding.dart';

class MyAppRouter {
  static GoRouter getRouter(bool onBoarding) {
    return GoRouter(
      initialLocation: onBoarding ? '/nav' : '/onboarding',
      routes: [
        GoRoute(
          name: '/nav',
          path: '/nav',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: BottomNav(),
            );
          },
        ),
        GoRoute(
          name: '/onboarding',
          path: '/onboarding',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: OnBoardingScreen(),
            );
          },
        ),
        GoRoute(
          name: '/ticket',
          path: '/ticket',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: TicketScreen(),
            );
          },
        ),
      ],
    );
  }
}

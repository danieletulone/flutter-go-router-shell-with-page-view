import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_shell_with_page_view/src/routing/navigator_container_with_page_view.dart';
import 'package:go_router_shell_with_page_view/src/routing/routes/home_route.dart';
import 'package:go_router_shell_with_page_view/src/routing/routes/posts_route.dart';
import 'package:go_router_shell_with_page_view/src/routing/routes/profile_route.dart';
import 'package:go_router_shell_with_page_view/src/views/stateful_shell_with_bottom_bar_view.dart';

final GoRouter router = GoRouter(
  routes: [
    StatefulShellRoute(
      builder: (context, state, child) => StatefulShellWithBottomBarView(
        child: child,
      ),
      branches: [
        StatefulShellBranch(
          routes: [HomeRoute()],
        ),
        StatefulShellBranch(
          routes: [PostsRoute()],
        ),
        StatefulShellBranch(
          routes: [ProfileRoute()],
        ),
      ],
      navigatorContainerBuilder: (
        BuildContext context,
        StatefulNavigationShell navigationShell,
        List<Widget> children,
      ) {
        return NavigatorContainerWithPageView(
          navigationShell: navigationShell,
          children: children,
        );
      },
    ),
  ],
);

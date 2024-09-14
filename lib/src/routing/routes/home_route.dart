import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_shell_with_page_view/src/views/home_view.dart';

class HomeRoute extends GoRoute {
  HomeRoute()
      : super(
          path: '/',
          pageBuilder: (context, state) => const MaterialPage(
            child: HomeView(),
          ),
        );
}

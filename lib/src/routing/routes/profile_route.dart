import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_shell_with_page_view/src/views/profile_view.dart';

class ProfileRoute extends GoRoute {
  ProfileRoute()
      : super(
          path: '/profile',
          pageBuilder: (context, state) => const MaterialPage(
            child: ProfileView(),
          ),
        );
}

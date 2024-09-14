import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_shell_with_page_view/src/views/posts_view.dart';

class PostsRoute extends GoRoute {
  PostsRoute()
      : super(
          path: '/posts',
          pageBuilder: (context, state) => const MaterialPage(
            child: PostsView(),
          ),
        );
}

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_shell_with_page_view/src/routing/use_page_view.dart';

class NavigatorContainerWithPageView extends HookWidget {
  const NavigatorContainerWithPageView({
    super.key,
    required this.navigationShell,
    required this.children,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final (:pageController, :onPageChanged) = usePageView(navigationShell);

    return PageView(
      controller: pageController,
      physics: const ClampingScrollPhysics(),
      onPageChanged: onPageChanged,
      children: children,
    );
  }
}

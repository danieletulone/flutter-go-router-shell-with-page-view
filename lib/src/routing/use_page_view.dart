import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

/// Defines the return type for the usePageView hook.
/// Contains a PageController and a callback function for page changes.
typedef UsePageViewReturn = ({
  PageController pageController,
  void Function(int) onPageChanged,
});

/// Custom hook to manage synchronization between PageView and NavigationShell.
///
/// This hook creates and manages a PageController, synchronizing it with the
/// navigation state provided by StatefulNavigationShell.
UsePageViewReturn usePageView(StatefulNavigationShell navigationShell) {
  // Creates a PageController using the usePageController hook that will be disposed automatically.
  final pageController = usePageController();

  // Uses useRef to maintain state between renders
  // isFirstBuild is used to avoid animation on the first render
  final isFirstBuild = useRef(true);

  // isAnimating is used to prevent recursive calls during animation
  final isAnimating = useRef(false);

  // useEffect executes side effects in response to state changes
  useEffect(() {
    if (isFirstBuild.value) {
      isFirstBuild.value = false;
      return;
    }

    // If the current index of NavigationShell doesn't match the current page of PageController
    if (navigationShell.currentIndex != pageController.page) {
      isAnimating.value = true;

      // Animate the PageController to the new page
      pageController
          .animateToPage(
            navigationShell.currentIndex,
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
          )
          .then((_) => isAnimating.value = false);
    }

    // No cleanup necessary in this case
    return null;
  }, [
    navigationShell.currentIndex
  ]); // Execute the effect when the current index changes

  // Create a memoized callback function to handle page changes
  final onPageChanged = useCallback((index) {
    if (isAnimating.value) {
      return; // Avoid recursive calls during animation
    }

    // Update the NavigationShell when the page changes
    navigationShell.goBranch(index);
  });

  // Return a typed Record with the PageController and onPageChanged function
  return useMemoized(
    () => (
      pageController: pageController,
      onPageChanged: onPageChanged,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:yumquick/core/res/theme_manager/theme_manager.dart';

class BaseScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool showBlurGlow;

  const BaseScaffold({
    super.key,
    this.appBar,
    required this.body,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.showBlurGlow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ThemeManager.yellowBase,
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      body: Stack(
        alignment: Alignment.center,
        children: [
          if (showBlurGlow)
            Center(
            ),

          body,
        ],
      ),
    );
  }
}

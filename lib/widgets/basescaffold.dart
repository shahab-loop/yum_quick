import 'package:flutter/material.dart';

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
      backgroundColor: const Color(0xFFF5CB58),
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (showBlurGlow)
              Center(
              ),

            body,
          ],
        ),
      ),
    );
  }
}

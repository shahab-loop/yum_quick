import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title:  Text(
        'MyApp',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            // TODO: Navigate to notifications screen
          },
          icon: const Icon(
            Icons.notifications_none,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {
            // TODO: Navigate to profile screen
          },
          icon: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/controller.jpg'),
            radius: 15, // Adjust size
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

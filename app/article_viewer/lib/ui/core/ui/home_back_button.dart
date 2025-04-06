import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeBackButton extends StatelessWidget {
  const HomeBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.home),
      label: const Text('ホームに戻る'),
      onPressed: () => context.go('/'),
    );
  }
}

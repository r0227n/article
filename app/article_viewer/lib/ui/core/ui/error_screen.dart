import 'package:flutter/material.dart';
import 'package:article_viewer/ui/core/ui/home_back_button.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.error, this.stackTrace});

  final Object error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 16.0,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 80, color: Colors.red),
            Text(
              'エラーが発生しました',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              error.toString(),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
            if (stackTrace != null) ...[
              Container(
                constraints: const BoxConstraints(maxHeight: 200),
                child: SingleChildScrollView(
                  child: Text(
                    stackTrace.toString(),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey[400]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
            const Padding(padding: EdgeInsets.symmetric(vertical: 16.0), child: HomeBackButton()),
          ],
        ),
      ),
    );
  }
}

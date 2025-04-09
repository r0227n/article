import 'package:flutter/material.dart';
import 'home_back_button.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 20.0,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '404',
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),

            const Text(
              'ページが見つかりません',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black87),
            ),

            const Text(
              'お探しのページは存在しないか、移動した可能性があります。',
              style: TextStyle(fontSize: 16, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 16.0), child: HomeBackButton()),
          ],
        ),
      ),
    );
  }
}

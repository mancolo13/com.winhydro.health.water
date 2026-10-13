import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Analytics'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Аналитика напитков за месяц', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(height: 12),
                  Text('• Чистая вода: 75% (56.7 л)', style: TextStyle(color: Colors.white, fontSize: 14)),
                  SizedBox(height: 6),
                  Text('• Травяной чай: 15% (11.3 л)', style: TextStyle(color: Colors.white, fontSize: 14)),
                  SizedBox(height: 6),
                  Text('• Изотоники и электролиты: 10% (7.6 л)', style: TextStyle(color: Colors.white, fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

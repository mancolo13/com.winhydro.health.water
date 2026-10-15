import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • History'),
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
                children: [
                  Text('7-Day Average Intake', style: TextStyle(color: Colors.white70, fontSize: 12)),
                  SizedBox(height: 6),
                  Text('2,520 ml/day', style: TextStyle(color: AppTheme.primaryColor, fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text('91% hydration target achieved', style: TextStyle(color: Colors.greenAccent, fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

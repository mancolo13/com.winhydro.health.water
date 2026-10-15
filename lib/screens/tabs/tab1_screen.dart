import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});

  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  int _ml = 1950;
  final int _target = 2600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Tracker'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.35)),
              ),
              child: Column(
                children: [
                  const Icon(Icons.water_drop, size: 48, color: AppTheme.primaryColor),
                  const SizedBox(height: 12),
                  Text('$_ml / $_target ml', style: const TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  const Text('Hot day (+350 ml to daily target)', style: TextStyle(color: Colors.orangeAccent, fontSize: 12)),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => setState(() => _ml = (_ml + 250).clamp(0, 5000)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.primaryColor,
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                          ),
                          child: const FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text('+250 ml Glass'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => setState(() => _ml = (_ml + 500).clamp(0, 5000)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.cardColor,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                          ),
                          child: const FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text('+500 ml Bottle'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

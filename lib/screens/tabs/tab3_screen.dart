import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final schedule = [
      {'time': '08:00', 'desc': 'Утренний подъем & лимонная вода'},
      {'time': '10:00', 'desc': 'Первый стакан в офисе'},
      {'time': '12:30', 'desc': 'Перед обедом'},
      {'time': '15:30', 'desc': 'Дневная перезагрузка'},
      {'time': '18:00', 'desc': 'После работы'},
      {'time': '21:00', 'desc': 'Вечерний стакан'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Schedule'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Расписание напоминаний', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...schedule.map((s) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  const Icon(Icons.alarm, color: AppTheme.primaryColor),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(s['time']!, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
                        Text(s['desc']!, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

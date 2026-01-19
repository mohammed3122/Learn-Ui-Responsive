import 'package:flutter/material.dart';

class TextResponsive extends StatelessWidget {
  const TextResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive Text Example')),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text('Text Title', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text(
              'This is a body For responsive Text in a lot of Screen Size',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

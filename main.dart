
import 'package:flutter/material.dart';

void main() => runApp(GingerTipsApp());

class GingerTipsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GingerTips',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GingerTips – Food Assistant')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What would you like to eat today?', style: TextStyle(fontSize: 20)),
            TextField(
              controller: controller,
              decoration: InputDecoration(labelText: 'Type or speak here...'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                print('Search tapped');
              },
              child: Text('Search Food'),
            )
          ],
        ),
      ),
    );
  }
}

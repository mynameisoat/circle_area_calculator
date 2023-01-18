import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: CircleAreaCalculator(),
    ),
  );
}

class CircleAreaCalculator extends StatefulWidget {
  @override
  _CircleAreaCalculatorState createState() => _CircleAreaCalculatorState();
}

class _CircleAreaCalculatorState extends State<CircleAreaCalculator> {
  double _radius = 0;
  double _area = 0;

  final _radiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Area Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _radiusController,
              decoration: InputDecoration(
                labelText: 'Radius',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _radius = double.parse(value);
                });
              },
            ),
            SizedBox(height: 16),
            Text(
              'Area: ${_area.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Calculate'),
              onPressed: () {
                setState(() {
                  _area = _calculateArea();
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  double _calculateArea() {
    return 3.14159 * _radius * _radius;
  }
}

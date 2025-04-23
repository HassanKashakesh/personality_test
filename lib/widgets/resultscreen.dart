import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import '../models/personality_type.dart';

class ResultScreen extends StatelessWidget {
  final Map<int, PersonalityType> selectedAnswers;

  const ResultScreen({super.key, required this.selectedAnswers});

  Map<String, double> calculatePersonalityResults() {
    Map<String, double> results = {
      "Thinker": 0,
      "Feeler": 0,
      "Planner": 0,
      "Adventurer": 0,
    };

    selectedAnswers.forEach((_, type) {
      results[type.name] = results[type.name]! + 1;
    });

    return results;
  }

  @override
  Widget build(BuildContext context) {
    final resultMap = calculatePersonalityResults();

    return Scaffold(
      body: Container(
        color: Colors.teal[50],
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your Personality Result",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              PieChart(
                dataMap: resultMap,
                chartRadius: 180,
                chartType: ChartType.ring,
                colorList: [Colors.indigo, Colors.pink, Colors.green, Colors.orange],
                chartValuesOptions: ChartValuesOptions(
                  showChartValuesInPercentage: true,
                  showChartValuesOutside: true,
                  decimalPlaces: 0,
                ),
                legendOptions: LegendOptions(
                  showLegends: true,
                  legendPosition: LegendPosition.bottom,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

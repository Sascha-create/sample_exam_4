import 'package:flutter/material.dart';
import 'package:sample_exam_4/src/activity_checker.dart';

class SampleExamScreen extends StatefulWidget {
  const SampleExamScreen({super.key});

  @override
  State<SampleExamScreen> createState() => _SampleExamScreenState();
}

bool hasIconsChanged = false;

class _SampleExamScreenState extends State<SampleExamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Probe - Wissenscheck 4"),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Image.asset(scale: 8, "assets/moon.png"),
                ),
                ActivityChecker(
                    header: "Vorbereitung",
                    description: "Auf den Wissenschek 4"),
                SizedBox(
                  height: 16,
                ),
                ActivityChecker(
                    header: "Durchführung", description: "Des Wissenschek 4"),
                SizedBox(
                  height: 260,
                  child: Column(
                    mainAxisAlignment: hasIconsChanged
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 56,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 56,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.blue,
                        size: 56,
                      ),
                    ],
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      hasIconsChanged = !hasIconsChanged;
                    });
                  },
                  child: Icon(
                    Icons.change_circle_outlined,
                    size: 40,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

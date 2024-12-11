import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PointsCounter(),
    );
  }
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAScore = 0;

  int teamBScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Points Counter",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    "Team A",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    "$teamAScore",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 150,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAScore += 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    child: const Text(
                      "Add 1 point",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAScore += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    child: const Text(
                      "Add 2 point",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAScore += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    child: const Text(
                      "Add 3 point",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 400,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 2,
                ),
              ),
              Column(
                children: [
                  const Text(
                    "Team B",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    "$teamBScore",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 150,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBScore += 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    child: const Text(
                      "Add 1 point",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBScore += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    child: const Text(
                      "Add 2 point",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBScore += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    child: const Text(
                      "Add 3 point",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              )
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                teamAScore = 0;
                teamBScore = 0;
              });
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(150, 50),
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            child: const Text(
              "Reset",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}

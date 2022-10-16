import 'package:flutter/material.dart';
import 'package:funky_backgrounds/funky_backgrounds.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Funky Backgrounds',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Funky Backgrounds'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool hideContents = false;
  FunkyBackgroundPainter painter = NotFunkyBackgroundPainter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                hideContents = !hideContents;
              });
            },
            icon: Icon(
              hideContents ? Icons.visibility_off : Icons.visibility,
            ),
          ),
        ],
      ),
      body: Center(
        child: FunkyBackground(
          painter: painter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: hideContents
                          ? const SizedBox(height: 64)
                          : Card(
                              child: Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: Center(child: Text('Item $index')),
                              ),
                            ),
                    );
                  },
                  separatorBuilder: (_, __) => const SizedBox(height: 32),
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          painter = FunkyConicCurve(Colors.red[200]!);
                        });
                      },
                      child: const Text('FunkyConicCurve'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          painter = const FunkyRotatingLines(Colors.blue);
                        });
                      },
                      child: const Text('FunkyRotatingLines'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          painter = FunkyBezierLines(Colors.pink[100]!);
                        });
                      },
                      child: const Text('FunkyBezierLines'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          painter = FunkyHorizontalTriangles(
                            Colors.green[200]!,
                          );
                        });
                      },
                      child: const Text('FunkyHorizontalTriangles'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          painter = FunkyShiftedTriangle(Colors.purple[200]!);
                        });
                      },
                      child: const Text('FunkyShiftedTriangle'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          painter = FunkyLateralTriangles(Colors.yellow[200]!);
                        });
                      },
                      child: const Text('FunkyLateralTriangles'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          painter = const FunkyStretchedTriangles(Colors.cyan);
                        });
                      },
                      child: const Text('FunkyStretchedTriangles'),
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotFunkyBackgroundPainter extends FunkyBackgroundPainter {
  @override
  void paint(Canvas canvas, Size size) {}
}

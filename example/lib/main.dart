import 'package:flutter/material.dart';
import 'package:tiny_dialog/tiny_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tiny Dialog'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                onPressed: () {
                  TinyDialog.success(
                    context,
                    message:
                        "Message success, Consectetur occaecat esse tempor sit tempor laborum qui velit esse nisi eu. Consequat est fugiat proident mollit laboris aliquip ex reprehenderit.",
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Success!'),
              ),
              ElevatedButton(
                onPressed: () {
                  TinyDialog.info(
                    context,
                    message: "Reprehenderit nulla id dolore in.",
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Info!'),
              ),
              ElevatedButton(
                onPressed: () {
                  TinyDialog.warning(
                    context,
                    message: "Reprehenderit nulla id dolore in.",
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber[600],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Warning!'),
              ),
              ElevatedButton(
                onPressed: () {
                  TinyDialog.error(
                    context,
                    message: "Reprehenderit nulla id dolore in.",
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Error!'),
              ),
              ElevatedButton(
                onPressed: () {
                  TinyDialog.confirm(
                    context,
                    message: "Reprehenderit nulla id dolore in.",
                    onConfirm: () {
                      Navigator.pop(context);
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[800],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Confirm!'),
              ),
              ElevatedButton(
                onPressed: () {
                  TinyDialog.custom(
                    context,
                    child: Image.network("https://picsum.photos/200/300", height: 200, width: 200, fit: BoxFit.cover,),
                    onConfirm: () {
                      Navigator.pop(context);
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Custom!'),
              ),
            ],
          ),
        ));
  }
}

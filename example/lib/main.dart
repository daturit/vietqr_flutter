import 'package:flutter/material.dart';
import 'package:vietqr_flutter/vietqr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo VietQR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String code = "";

  @override
  void initState() {
    code = _genQR();
    super.initState();
  }

  String _genQR() {
    String qrCode = VietQRGenerator.generate(
      accountNumber: 'KFI9482626',
      bankCode: '0006970441',
    );

    print(qrCode);
    return qrCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(code),
            Center(
              child: generatorQR(
                  vietQr: code,
                  image: const AssetImage('assets/images/bank.png'),
                  sizeQr: 300,
                  sizeEmbeddingImage: 50),
            )
          ],
        ),
      ),
    );
  }
}

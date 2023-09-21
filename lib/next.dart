import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NextWidget extends StatefulWidget {
  const NextWidget({Key? key}) : super(key: key);

  @override
  State<NextWidget> createState() => _NextWidgetState();
}

class _NextWidgetState extends State<NextWidget> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      ///横向きに固定する

    ]);

  }

  @override
  void dispose() {
    // ウィジェットが破棄されたときに元の向きに戻す（縦向き）
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('横画面'),
            const SizedBox(height: 100,),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
                child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.red,
                    child: const Center(child: Text('戻る'))))
          ],
        ),
      ),
    );
  }
}

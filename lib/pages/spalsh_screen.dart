import 'package:flutter/material.dart';
import 'package:unit_app/pages/unit_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigator();
  }

  _navigator() async {
    await Future.delayed(const Duration(seconds: 4), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const UnitScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/images/hiiii.png",
                height: 120,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const CircularProgressIndicator(
              color: Color.fromARGB(255, 167, 113, 109),
            )
          ],
        ),
      ),
    );
  }
}

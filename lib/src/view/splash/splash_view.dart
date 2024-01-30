// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_invoice_generator_windows/src/utils/app_version_utils.dart';
import 'package:flutter_invoice_generator_windows/src/view/side_nav/side_nav.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initSplash() async {
    await Future.delayed(const Duration(seconds: 3));
    Route route =
        MaterialPageRoute(builder: (context) => const SideNavPaneView());

    Navigator.pushReplacement(context, route);
  }

  @override
  void initState() {
    super.initState();
    initSplash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03284c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Spacer(
            flex: 2,
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/ic_printer.png',
              width: 100,
              height: 100,
            ),
          ),
          const SizedBox(height: 20),
          FutureBuilder<String>(
            future: AppVersionUtils.getAppVersion(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Invoice Generator App v${snapshot.data}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
          const SizedBox(height: 10),
          const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.code,
                  size: 16,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
              ],
            ),
          ),
          const Center(
              child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )),
          const Spacer(),
        ],
      ),
    );
  }
}

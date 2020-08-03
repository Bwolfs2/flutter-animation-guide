import 'package:flutter/material.dart';
import 'package:flutter_animation_guide/components/custom_button.dart';
import 'package:flutter_animation_guide/navigation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'implicit_animations/implicit_animations_options_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/flutter_logo.png', width: 200),
              SizedBox(
                height: 10,
              ),
              Text("Animation Tutorial Guide",
                  style: GoogleFonts.alegreya(fontSize: 20)),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: CustomButton(
                    text: "1. Implicit Animations",
                    onPressed: () =>
                        push(context, ImplicitAnimationsOptionsPage()),
                  )),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: CustomButton(
                    text: "2. TweenAnimation Builder",
                    onPressed: () => _showCustomSnackBar(),
                  )),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: CustomButton(
                      text: "3. Explicit Animations",
                      onPressed: () => _showCustomSnackBar())),
            ],
          ),
        ),
      ),
    );
  }

  void _showCustomSnackBar() {
    final snackBar = SnackBar(
      content: Text("Available soon"),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
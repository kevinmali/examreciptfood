import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro_Screen extends StatefulWidget {
  const Intro_Screen({super.key});

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

class _Intro_ScreenState extends State<Intro_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              body:
                  "A recipe is a formula of ingredients and a list of instructions for creating prepared foods. It is used to control quality, quantity, and food costs in a foodservice operation. A recipe may be simple to complex based on the requirements of the operation and the intended user. For example, an experienced chef may need a recipe with only a few details, while a beginner cook may need more information about ingredients, preparation steps, cooking times and temperatures, visual cues, and equipment requirements. ",
              title: " Check A New recipes info",
              image: Image.asset(
                "Asset/Images/Foods_-_Idil_Keysan_-_Wikimedia_Giphy_stickers_2019.gif",
                height: 400,
                width: 400,
              ),
            ),
            PageViewModel(
              body:
                  "Home Recipes – Based on small yields and quantities often measured by volume.",
              title: " Check A Home recipes",
              image: Image.asset(
                "Asset/Images/images.png",
                height: 520,
                width: 520,
              ),
            ),
          ],
          done: Text("DONE"),
          onDone: () {
            Navigator.of(context).pushNamed('Home');
          },
          next: Text("Next"),
        ),
      ),
    );
  }
}

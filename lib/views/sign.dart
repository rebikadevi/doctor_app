import 'package:doctor_app/views/login_page.dart';
import 'package:flutter/material.dart';

class sign extends StatelessWidget {
  const sign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GradientButtonFb1(
                text: 'Login',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                }),
            SizedBox(
              height: 30,
            ),
            GradientButtonFb1(text: 'SignUp', onPressed: () {}),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                      color: Color.fromRGBO(62, 60, 62, 1), fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}

class GradientButtonFb1 extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const GradientButtonFb1(
      {required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(246, 174, 129, 1);
    const secondaryColor = Color.fromRGBO(246, 174, 129, 1);
    const accentColor = Color.fromRGBO(62, 60, 62, 1);

    // const double borderRadius = 15;

    return DecoratedBox(
        decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(borderRadius),
            gradient: LinearGradient(colors: [primaryColor, secondaryColor])),
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            alignment: Alignment.center,
            padding: MaterialStateProperty.all(const EdgeInsets.only(
                right: 75, left: 75, top: 15, bottom: 15)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            // shape: MaterialStateProperty.all(
            //   RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(borderRadius)),
            // )
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(color: accentColor, fontSize: 24),
          ),
        ));
  }
}

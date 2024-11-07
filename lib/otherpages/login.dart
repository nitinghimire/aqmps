import 'package:flutter/material.dart';
import 'package:test2/otherpages/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 400,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 80),
              decoration: BoxDecoration(
                color: const Color(0xff380069),
              ),
              child: Text(
                "AQPMS",
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 36,
                    fontVariations: [FontVariation("wght", 600)]),
              ),
            ),
            Text(
              "Log in to your account ",
              style: TextStyle(
                  color: Color.fromRGBO(129, 129, 129, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  fontVariations: [FontVariation("wght", 200)]),
            ),
            InputField(
              label: "Username",
              placeholdertext: "Type Your Username",
              imagepath: "assets/icons/User.png",
              maxlength: 20,
              obscure: false,
            ),
            InputField(
              label: "Password",
              placeholdertext: "Type Your Password",
              imagepath: "assets/icons/Lock.png",
              maxlength: 20,
              obscure: true,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                width: 300,
                decoration: BoxDecoration(
                  color: const Color(0xff380069),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Log In",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      fontVariations: [FontVariation("wght", 200)]),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Forgot Password? ",
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    fontVariations: [FontVariation("wght", 200)]),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 600),
              child: Divider(
                  // height: 100 ,
                  ),
            ),
            Text(
              "Don't have an account? ",
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  fontVariations: [FontVariation("wght", 200)]),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Signup()));
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                    border: Border.all(),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    " Create an account",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        fontVariations: [FontVariation("wght", 200)]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.imagepath,
    required this.placeholdertext,
    required this.label,
    required this.maxlength,
    required this.obscure,
  });
  final String label;
  final String imagepath;
  final String placeholdertext;
  final int maxlength;
  final bool obscure;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 522),
      child: TextField(
        obscureText: obscure,
        maxLength: maxlength,
        decoration: InputDecoration(
            isDense: true,
            prefixIcon: Image.asset(imagepath),
            hintText: placeholdertext,
            hintStyle: TextStyle(
                color: Color.fromRGBO(129, 129, 129, 1),
                fontSize: 15,
                fontWeight: FontWeight.w200,
                fontVariations: [FontVariation("wght", 200)]),
            labelText: label,
            labelStyle: TextStyle(
                color: Color.fromRGBO(129, 129, 129, 1),
                fontSize: 15,
                fontWeight: FontWeight.w200,
                fontVariations: [FontVariation("wght", 200)]),
            contentPadding: EdgeInsets.all(15),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                borderSide: BorderSide(
                  width: 0.1,
                  style: BorderStyle.none,
                  color: Colors.grey,
                ))),
        style: TextStyle(
            color: Color.fromRGBO(129, 129, 129, 1),
            fontSize: 20,
            fontWeight: FontWeight.w200,
            fontVariations: [FontVariation("wght", 200)]),
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      tristate: false,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}

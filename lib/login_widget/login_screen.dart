import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:practicethree/common_widgets/assets_constants.dart';
import 'package:practicethree/common_widgets/color_constants.dart';
import 'package:practicethree/common_widgets/text_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const List<String> scopes = <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ];

  GoogleSignIn _googleSignIn = GoogleSignIn(
    // Optional clientId
    clientId:
        '268650604938-und2oil7acopsnv36sl22iohu362vao2.apps.googleusercontent.com',
    scopes: scopes,
  );

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: ColorConstants.backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Center(
                  child: Text(
                    TextConstants.text1,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(child: Text(TextConstants.text2)),
                const SizedBox(
                  height: 10,
                ),
                const Center(child: Text(TextConstants.text3)),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorConstants.backgroundColor2,
                    hintText: TextConstants.text4,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorConstants.backgroundColor2,
                    hintText: TextConstants.text5,
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(TextConstants.text6),
                const SizedBox(
                  height: 18,
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.elevatedbuttonColor2,
                    ),
                    child: const Text(TextConstants.text7),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Center(child: Text(TextConstants.text8)),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _handleSignIn();
                      },
                      child: Container(
                          color: ColorConstants.backgroundColor2,
                          height: 30,
                          width: 50,
                          child: Image.asset(AssetsConstants.firstImage)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        _handleSignIn();
                      },
                      child: Container(
                          color: ColorConstants.backgroundColor2,
                          height: 30,
                          width: 50,
                          child: Image.asset(AssetsConstants.secondImage)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        color: ColorConstants.backgroundColor2,
                        height: 30,
                        width: 50,
                        child: Image.asset(AssetsConstants.thirdImage)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(TextConstants.text9),
                    Text(
                      TextConstants.text10,
                      style: TextStyle(color: ColorConstants.textColor2),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

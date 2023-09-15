import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timmerjob/core.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);
  static const double kBasePadding = 4.0;
  static const double kSafePadding = 16.0;
  final textController = TextEditingController();
  String? displayName;

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(kSafePadding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Timmer",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 48.0,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Jobs",
                      style: GoogleFonts.poppins(
                          color: Colors.blue[700],
                          fontSize: 48.0,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 2 * kBasePadding,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'What is your name?',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 2 * kBasePadding,
                    ),
                    Container(
                      height: 12 * kBasePadding,
                      padding: EdgeInsets.symmetric(horizontal: kSafePadding),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color.fromRGBO(215, 215, 215, 1),
                          ),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextField(
                        controller: textController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Input your name'),
                      ),
                    ),
                    SizedBox(
                      height: 2 * kSafePadding,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        displayName = textController.text;
                        Get.to(JobView(displayName: displayName));
                      },
                      child: Text(
                        'Next',
                        style: GoogleFonts.lato(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}

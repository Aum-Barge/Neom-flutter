import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';
import 'google_auth.dart';

class Signinpage extends StatefulWidget {
  const Signinpage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SigninpageState createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 150),
              child: SvgPicture.asset(
                "assets/undraw_sign_in_re_o58h.svg",
                fit: BoxFit.scaleDown,
                height: 300,
              ),
            ),
            Center(
              child: Text(
                "Welcome Back",
                style: GoogleFonts.pacifico(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: ElevatedButton.icon(
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.googleLogin();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homepage()));
                  },
                  icon: const Icon(
                    Icons.g_mobiledata_sharp,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    textStyle: GoogleFonts.roboto(fontSize: 15),
                    backgroundColor: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  label: const Text("Sign Up")),
            ),
          ],
        ),
      ),
    );
  }
}

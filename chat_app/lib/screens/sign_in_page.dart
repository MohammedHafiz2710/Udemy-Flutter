import 'package:chat_app/constants.dart';
import 'package:chat_app/helper/show_snack_bar.dart';
import 'package:chat_app/screens/chat_page.dart';
import 'package:chat_app/screens/register_page.dart';
import 'package:chat_app/widgets/my_button.dart';
import 'package:chat_app/widgets/my_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  static String id = 'SignInPage';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                SizedBox(height: 70),
                Image.asset(
                  "assets/images/scholar.png",
                  height: 100,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Scholar Chat",
                  style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "Pacifico"),
                ),
                SizedBox(height: 70),
                SizedBox(width: double.infinity, child: Text("LOGIN", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))),
                SizedBox(height: 10),
                MyTextFormField(
                  onChanged: (data) {
                    email = data;
                  },
                  label: "Email",
                ),
                SizedBox(height: 10),
                MyTextFormField(
                  onChanged: (data) {
                    password = data;
                  },
                  label: "Password",
                ),
                SizedBox(height: 10),
                MyButton(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                      try {
                        await loginUser();
                        showSnackBar(context, message: "User Login successfully");
                        Navigator.pushNamed(context, ChatPage.id, arguments: email);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          showSnackBar(context, message: "No user found for that email.");
                        } else if (e.code == 'wrong-password') {
                          showSnackBar(context, message: "Wrong password provided for that user.");
                        }
                      } catch (e) {
                        showSnackBar(context, message: "there was an error");
                      }
                      setState(() {});
                      isLoading = false;
                    }
                  },
                  label: "Login",
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?", style: TextStyle(color: Colors.white)),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RegisterPage.id);
                        },
                        child: Text("Sign Up", style: TextStyle(color: Color(0xffC7EDE6), fontWeight: FontWeight.bold))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email!, password: password!);
  }
}

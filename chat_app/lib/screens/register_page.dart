import 'package:chat_app/constants.dart';
import 'package:chat_app/helper/show_snack_bar.dart';
import 'package:chat_app/screens/chat_page.dart';
import 'package:chat_app/widgets/my_button.dart';
import 'package:chat_app/widgets/my_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static String id = 'RegisterPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController controller = TextEditingController();
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();
  String? email;
  String? password;

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
                  kLogo,
                  height: 100,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Scholar Chat",
                  style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "Pacifico"),
                ),
                SizedBox(height: 70),
                SizedBox(width: double.infinity, child: Text("Register", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))),
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
                        await registerUser();
                        showSnackBar(context, message: "User registered successfully");
                        controller.clear();
                        Navigator.pushNamed(context, ChatPage.id, arguments: email);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          showSnackBar(context, message: "The password provided is too weak.");
                        } else if (e.code == 'email-already-in-use') {
                          showSnackBar(context, message: "The account already exists for that email.");
                        }
                      } catch (e) {
                        showSnackBar(context, message: "there was an error");
                      }
                      setState(() {});
                      isLoading = false;
                    } else {
                      showSnackBar(context, message: "Please enter valid data");
                    }
                  },
                  label: "Sign in",
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have account? ", style: TextStyle(color: Colors.white)),
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text("LogIn", style: TextStyle(color: Color(0xffC7EDE6), fontWeight: FontWeight.bold))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> registerUser() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password!);
  }
}

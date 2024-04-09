import 'package:flutter/material.dart';
import 'package:login_page/Components/my_button.dart';
import 'package:login_page/Components/text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                // logo
                SizedBox(
                  height: 30,
                ),

                Icon(Icons.lock, size: 60),

                SizedBox(
                  height: 30,
                ),

                // welcome back

                Text(
                  "Welcome back you've been missed!",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 20,
                ),
                // username

                MyTextField(
                  labelText: "Username",
                  icon: Icons.person,
                  controller: usernameController,
                  obsecureText: false,
                ),

                // password
                MyTextField(
                  labelText: "Password",
                  icon: Icons.lock,
                  controller: passwordController,
                  obsecureText: true,
                ),

                // forget password

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forget Password?",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //sign in button

                const MyButton(),

                const SizedBox(
                  height: 20,
                ),

                // or continue with
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ))
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),
                // google + apple sign in button

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        './lib/images/google.png',
                        height: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        './lib/images/apple.png',
                        height: 50,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                // not a member? sign up now

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?"),
                    Text(
                      " Register now",
                      style: TextStyle(color: Colors.blue),
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

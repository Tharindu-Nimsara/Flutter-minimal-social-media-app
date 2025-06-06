import 'package:flutter/material.dart';
import 'package:social_media_app/components/my_button.dart';
import 'package:social_media_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  //login function
  void login(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            
            //logo
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, size: 80, color: Theme.of(context).colorScheme.inversePrimary),
              const SizedBox(height: 25),
          
              //app name
              Text(
                'M I N I M A L',
                style: TextStyle(
                  fontSize: 20,   
                ),
              ),
              const SizedBox(height: 25),
              
              //email text field
              MyTextfield(hintText: "Email", obscureText: false, controller: emailController),
              const SizedBox(height: 25),
              //password text field
              MyTextfield(hintText: "Password", obscureText: true, controller: passwordController),
              const SizedBox(height: 5),
              //forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              //sign in button
              MyButton(
                text: 'Login',
                onTap: login,
              ),
              const SizedBox(height: 25),
              //don't have an account? Register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(width: 4),
                  TextButton(
                    onPressed: onTap,
                    child: Text(
                      'Register here',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ],
              ),
           ],  
          ),
        ),
    ),

    );
  }
}
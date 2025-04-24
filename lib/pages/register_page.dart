import 'package:flutter/material.dart';
import 'package:social_media_app/components/my_button.dart';
import 'package:social_media_app/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPWController = TextEditingController();

  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  //register function
  void register(){

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
              //username text field
              MyTextfield(hintText: "User name", obscureText: false, controller: usernameController),
              const SizedBox(height: 25),
              //email text field
              MyTextfield(hintText: "Email", obscureText: false, controller: emailController),
              const SizedBox(height: 25),
              //password text field
              MyTextfield(hintText: "Password", obscureText: true, controller: passwordController),
              const SizedBox(height: 25),
              //confirm password text field
              MyTextfield(hintText: "Confirm Password", obscureText: true, controller: confirmPWController),
             
             
              const SizedBox(height: 50),
              //register in button
              MyButton(
                text: 'Register',
                onTap: register,
              
              ),
              const SizedBox(height: 25),
              //Already have an account? Register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(width: 4),
                  TextButton(
                    onPressed: onTap,
                    child: Text(
                      'Login here',
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
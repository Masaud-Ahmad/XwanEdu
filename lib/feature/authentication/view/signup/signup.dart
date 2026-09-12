import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edutextfield/edutexttextfield.dart';
import 'package:xwanedu/common/widgets/title_logo/title_logo.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/constant/text_constant.dart';
import 'package:xwanedu/feature/authentication/view/signup/widgets/createaccountbutton.dart';
import 'package:xwanedu/feature/authentication/view/signup/widgets/socialbuttons.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isTermAccepted = false;

  @override
  dispose() {
    super.dispose();
    emailController.dispose();
    fullNameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: SizeConstant.lg,
              vertical: SizeConstant.lg,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: SizeConstant.defaultSpace),

                //logo, title and subtitle
                TitleLogo(
                  lightBlueBg: Colors.blue.shade100,
                  primaryBlue: Colors.blue,
                  textGrey: Colors.grey,
                  icon: Icons.school_rounded,
                  title: TextConstant.signupTitle,
                  subtitle: TextConstant.signupSubTitle,
                ),

                const SizedBox(height: SizeConstant.spaceBtwSections),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: SizeConstant.md,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      EduTextTextField(
                        text: TextConstant.fullName,
                        icon: Icons.person,
                        hintText: 'Enter your full name',
                        controller: fullNameController,
                      ),
                      EduTextTextField(
                        text: TextConstant.email,
                        icon: Icons.email,
                        hintText: 'Enter your email',
                        controller: emailController,
                      ),

                      EduTextTextField(
                        text: TextConstant.password,
                        icon: Icons.lock_outline_rounded,
                        hintText: 'Enter your password',
                        controller: passwordController,
                      ),
                      const SizedBox(height: SizeConstant.spaceBtwItems),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: isTermAccepted,
                            onChanged: (value) {
                              setState(() {
                                isTermAccepted = value ?? false;
                              });
                            },
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                          Expanded(
                            child: RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13,
                                ),
                                children: [
                                  TextSpan(text: "I agree to the "),
                                  TextSpan(
                                    text: "Terms and Conditions",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextSpan(text: " and "),
                                  TextSpan(
                                    text: "Privacy Policy",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: SizeConstant.spaceBtwItems),

                      // Account create button
                      CreateAccountButton(),

                      const SizedBox(height: 25),

                      Row(
                        children: [
                          const Expanded(child: Divider()),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "OR CONTINUE WITH",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const Expanded(child: Divider()),
                        ],
                      ),

                      const SizedBox(height: 20),
                      //social buttons
                      SocialButtons(),

                      const SizedBox(height: 25),

                      Center(
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.black87),
                            children: [
                              TextSpan(text: "Already have an account? "),
                              TextSpan(
                                text: "Sign In",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edutextfield/textfiled.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/constant/text_constant.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

final TextEditingController emailController = TextEditingController();

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: SizeConstant.sm),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.school_rounded,
                        size: SizeConstant.iconLg * 3,
                        color: Colors.blueAccent,
                      ),

                      const SizedBox(height: SizeConstant.defaultSpace / 4),
                      Text(
                        TextConstant.signupTitle,
                        style: TextStyle(
                          fontSize: SizeConstant.fontSizeMd,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        TextConstant.signupSubTitle,
                        style: TextStyle(
                          fontSize: SizeConstant.fontSizeMd,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: SizeConstant.spaceBtwSections),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: SizeConstant.md,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        TextConstant.firstName,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConstant.fontSizeMd,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      EduTextField(
                        emailController: emailController,
                        fieldBg: Colors.white,
                        borderColor: Colors.grey.shade300,
                        primaryBlue: Colors.blueAccent,
                        hintText: TextConstant.firstName,
                        icon: Icons.person_outline_rounded,
                      ),

                      SizedBox(height: SizeConstant.spaceBtwInputFields),
                      const Text(
                        TextConstant.email,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConstant.fontSizeMd,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      EduTextField(
                        emailController: emailController,
                        fieldBg: Colors.white,
                        borderColor: Colors.grey.shade300,
                        primaryBlue: Colors.blueAccent,
                        hintText: TextConstant.email,
                        icon: Icons.mail_outline_rounded,
                      ),
                      SizedBox(height: SizeConstant.spaceBtwInputFields),

                      const Text(
                        TextConstant.password,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConstant.fontSizeMd,
                          color: Colors.black87,
                        ),
                      ),
                      EduTextField(
                        emailController: emailController,
                        fieldBg: Colors.white,
                        borderColor: Colors.grey.shade300,
                        primaryBlue: Colors.blueAccent,
                        hintText: TextConstant.password,
                        icon: Icons.lock_outline_rounded,
                      ),

                      const SizedBox(height: SizeConstant.spaceBtwItems),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
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

                      const SizedBox(height: 20),

                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Create Account",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),

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

                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.g_mobiledata,
                                color: Colors.red,
                                size: 28,
                              ),
                              label: const Text(
                                "Google",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.apple,
                                color: Colors.black,
                              ),
                              label: const Text(
                                "Apple",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),

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

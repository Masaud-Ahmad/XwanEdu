import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:xwanedu/common/widgets/edutextfield/edutexttextfield.dart';
import 'package:xwanedu/common/widgets/title_logo/title_logo.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/constant/text_constant.dart';
import 'package:xwanedu/feature/authentication/view/login/widgets/socialbuttons.dart';
import 'package:xwanedu/feature/authentication/view/signup/signup.dart';
import 'package:xwanedu/feature/classroom/view/classroomscreen/classroom_dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  static const Color primaryBlue = Color(0xFF1656C9);
  static const Color lightBlueBg = Color(0xFFDCE7FB);
  static const Color borderColor = Color(0xFFE2E5EA);
  static const Color textGrey = Color(0xFF6B7280);

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleSignIn() {
    // Hook up real auth logic here
    Get.to(ClassroomDashboard());
    debugPrint('Email: ${_emailController.text}');
    debugPrint('Password: ${_passwordController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SizeConstant.lg,
            vertical: SizeConstant.lg,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: SizeConstant.defaultSpace * 1.5),

              // Logo, Title and subtitle
              TitleLogo(
                lightBlueBg: lightBlueBg,
                primaryBlue: primaryBlue,
                textGrey: textGrey,
                icon: Icons.school_outlined,
                title: TextConstant.loginTitle,
                subtitle: TextConstant.loginSubTitle,
              ),
              const SizedBox(height: SizeConstant.spaceBtwSections),

              // Card
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: borderColor),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.03),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Email label
                    EduTextTextField(
                      controller: _emailController,
                      text: TextConstant.email,
                      icon: Icons.email,
                      hintText: 'Enter your email',
                    ),

                    // Password label + forgot
                    const SizedBox(height: SizeConstant.spaceBtwItems / 2),

                    // Password field
                    EduTextTextField(
                      controller: _passwordController,
                      text: TextConstant.password,
                      icon: Icons.lock_outline_rounded,
                      hintText: 'Enter your password',
                      forgetPassword: TextConstant.forgotPassword,
                    ),
                    const SizedBox(height: SizeConstant.spaceBtwSections),

                    // Sign In button
                    SizedBox(
                      height: 52,
                      child: ElevatedButton(
                        onPressed: _handleSignIn,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryBlue,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              TextConstant.signIn,
                              style: TextStyle(
                                fontSize: SizeConstant.fontSizeMd,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward_rounded, size: 20),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: SizeConstant.spaceBtwSections),

                    // Divider
                    Row(
                      children: [
                        Expanded(child: Divider(color: borderColor)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            TextConstant.orSignInWith,
                            style: TextStyle(
                              fontSize: SizeConstant.fontSizeSm,
                              fontWeight: FontWeight.w600,
                              color: textGrey.withValues(alpha: 0.8),
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        Expanded(child: Divider(color: borderColor)),
                      ],
                    ),
                    const SizedBox(height: SizeConstant.spaceBtwSections),

                    // Social buttons
                    SocialButtons(),
                  ],
                ),
              ),
              const SizedBox(height: SizeConstant.defaultSpace),

              // Sign up
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      TextConstant.orSignInWith,
                      style: TextStyle(fontSize: 14, color: textGrey),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to sign up screen
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ),
                        );
                      },
                      child: Text(
                        TextConstant.createAccount,
                        style: TextStyle(
                          fontSize: SizeConstant.fontSizeSm,
                          color: primaryBlue,
                          fontWeight: FontWeight.w600,
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
    );
  }
}

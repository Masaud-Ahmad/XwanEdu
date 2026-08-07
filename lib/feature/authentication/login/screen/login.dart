import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edutextfield/edutexttextfield.dart';
import 'package:xwanedu/common/widgets/edutextfield/textfiled.dart';
import 'package:xwanedu/common/widgets/socialbutton/socialbutton.dart';
import 'package:xwanedu/common/widgets/title_logo/title_logo.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/constant/text_constant.dart';
import 'package:xwanedu/feature/authentication/signup/screen/signup.dart';

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
  static const Color fieldBg = Color(0xFFF2F4F8);
  static const Color borderColor = Color(0xFFE2E5EA);
  static const Color textDark = Color(0xFF1A1D29);
  static const Color textGrey = Color(0xFF6B7280);

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleSignIn() {
    // Hook up real auth logic here
    debugPrint('Email: ${_emailController.text}');
    debugPrint('Password: ${_passwordController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: SizeConstant.defaultSpace),

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
                      text: TextConstant.email,
                      icon: Icons.email,
                      hintText: 'Enter your email',
                    ),
                    SizedBox(height: 18),

                    // Password label + forgot
                    const SizedBox(height: SizeConstant.spaceBtwItems / 2),

                    // Password field
                    EduTextTextField(
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
                    const SizedBox(height: 24),

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
                    const SizedBox(height: 20),

                    // Social buttons
                    Row(
                      children: [
                        Expanded(
                          child: SocialButton(
                            label: 'Google',
                            icon: Icons.g_mobiledata_rounded,
                            iconSize: SizeConstant.iconMd,
                            onTap: () {},
                          ),
                        ),
                        const SizedBox(width: SizeConstant.spaceBtwItems),
                        Expanded(
                          child: SocialButton(
                            label: 'Apple',
                            icon: Icons.apple_rounded,
                            iconSize: SizeConstant.iconMd,
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
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
                      child: EduText(
                        primaryBlue: primaryBlue,
                        text: TextConstant.createAccount,
                        fontSize: SizeConstant.fontSizeSm,
                        fontWeight: FontWeight.w600,
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

class EduText extends StatelessWidget {
  const EduText({
    super.key,
    required this.primaryBlue,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
  });

  final Color primaryBlue;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      TextConstant.createAccount,
      style: TextStyle(
        fontSize: fontSize,
        color: primaryBlue,
        fontWeight: fontWeight,
      ),
    );
  }
}

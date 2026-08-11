import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/socialbutton/socialbutton.dart';
import 'package:xwanedu/constant/size.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

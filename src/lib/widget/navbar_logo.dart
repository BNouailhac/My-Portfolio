import 'package:flutter/material.dart';
import 'package:folio/configs/app_typography.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "My portfolio",
      style: AppText.b1b!.copyWith(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sigmun/core/app_state.dart';
import 'package:sigmun/core/constants.dart';
import 'package:sigmun/resources/pages/services/services_screen.dart';
import 'package:sigmun/resources/pages/home/components/main_card.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';
import 'package:page_transition/page_transition.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Serviços',
      [],
      hideDivider: true,
      onTap: () => Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: 400),
          child: const ServicesScreen(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../l10n/l10n.dart';
import '../../components/components.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Assets.onboarding.svg()),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.onboarding,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(height: 32.0),
                  Button.filled(
                    onPressed: () {},
                    label: l10n.getStarted,
                  ),
                  const SizedBox(height: 8.0),
                  Button.outlined(
                    onPressed: () {},
                    label: l10n.haveAccount,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

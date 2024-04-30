import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class AlreadyHaveAnAccountYet extends StatelessWidget {
  const AlreadyHaveAnAccountYet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet?',
            style: TextStyles.font14GrayRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13GrayRegular,
            onEnter: (event) {},
          ),
        ],
      ),
    );
  }
}

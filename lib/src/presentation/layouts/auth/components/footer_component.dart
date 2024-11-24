import 'package:flutter/material.dart';

class FooterComponent extends StatelessWidget {
  const FooterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: MediaQuery.of(context).viewInsets.bottom == 0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey[200]!,
            ),
          ),
        ),
        alignment: Alignment.center,
        child: RichText(
          text: TextSpan(
            text: "Don't have account? ",
            children: [
              TextSpan(
                text: "Sign up",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
                /* recognizer: // TODO: Complete this code  */
              )
            ],
          ),
        ),
      ),
    );
  }
}

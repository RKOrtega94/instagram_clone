import 'package:flutter/material.dart';
import 'package:instagram_clone/src/presentation/layouts/auth/components/footer_component.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;
  const AuthLayout({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const Spacer(),
                SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Fakegram',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontWeight: FontWeight.w900,
                                ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      child,
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          const FooterComponent(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../core/mediaquery.dart';

class FlBootstrap extends StatelessWidget {
  const FlBootstrap({
    super.key,
    required this.colSm1,
    required this.colSm2,
    required this.colSm3,
    required this.spacer,
  });
  final Widget colSm1;
  final Widget colSm2;
  final Widget colSm3;
  final double spacer;

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Column(
        children: [
          colSm1,
          SizedBox(height: spacer),
          colSm2,
          SizedBox(height: spacer),
          colSm3
        ],
      );
    } else {
      return Wrap(
        children: [
          colSm1,
          SizedBox(width: spacer),
          colSm2,
          SizedBox(width: spacer),
          colSm3
        ],
      );
    }
  }
}

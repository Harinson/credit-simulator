import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class ProgressBarComponent extends StatelessWidget {
  final double maxProgress;
  final double progress;
  const ProgressBarComponent({
    Key? key,
    required this.maxProgress,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: maxProgress,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppTheme.grey[400],
      ),
      child: Row(
        children: [
          Container(
            height: 5,
            width: progress,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppTheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}

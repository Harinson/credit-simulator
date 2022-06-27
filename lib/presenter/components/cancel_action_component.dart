import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CancelActionComponent extends StatelessWidget {
  final Function() onTap;
  const CancelActionComponent({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Icon(
          size: 25,
          Icons.close,
          color: AppTheme.primary,
        ),
      ),
    );
  }
}

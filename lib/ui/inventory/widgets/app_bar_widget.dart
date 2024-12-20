import 'package:flutter/material.dart';

import '../../../core/core.dart';

class AppBarWidget extends StatelessWidget {
  final String title;

  const AppBarWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Button.outlined(
            onPressed: () {},
            label: 'Clock In',
            icon: Assets.icons.clockIn.svg(),
            color: AppColors.background,
            textColor: AppColors.primary,
            fontSize: 14.0,
            width: 170.0,
          ),
          Button.outlined(
            onPressed: () {
              // context.push(const DashboardPosPage());
            },
            label: 'POS',
            icon: Assets.icons.pos.svg(),
            color: AppColors.background,
            textColor: AppColors.primary,
            fontSize: 14.0,
            width: 170.0,
          ),
          Button.outlined(
            onPressed: () {},
            label: 'Logout',
            icon: Assets.icons.logout.svg(),
            color: AppColors.background,
            textColor: AppColors.primary,
            fontSize: 14.0,
            width: 170.0,
          ),
        ],
      ),
    );
  }
}

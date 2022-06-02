import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tic_toc_clone/res/app_colors.dart';
import 'package:flutter_tic_toc_clone/res/app_dimens.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(
          height: 2,
          color: Colors.grey,
        ),
        Container(
          height: 60,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              const Icon(
                Icons.search,
                color: Colors.white,
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(right: AppDimens.createButtonPadding),
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.ticTocAddBlue,
                        borderRadius: BorderRadius.circular(AppDimens.createButtonBorder),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.only(left: AppDimens.createButtonPadding),
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.ticTocAddRed,
                        borderRadius: BorderRadius.circular(AppDimens.createButtonBorder),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // margin: const EdgeInsets.symmetric(horizontal: AppDimens.createButtonPadding),
                      height: 30,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(AppDimens.createButtonBorder),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.message,
                color: Colors.white,
              ),
              const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}

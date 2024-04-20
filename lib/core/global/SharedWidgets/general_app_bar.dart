import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/Features/Home/Presentation/view_models/Cubits/Localization/localization_cubit.dart';
import 'package:quran_app/Features/Home/Presentation/view_models/Cubits/Theme/theme_cubit.dart';
import 'package:quran_app/core/global/themes/AppColors/app_colors.light.dart';
import 'package:quran_app/core/global/themes/AppColors/app_colors_dark.dart';

class GeneralAppBar extends StatelessWidget {
  const GeneralAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize:
          Size(double.infinity, MediaQuery.of(context).size.height * 0.2),
      child: AppBar(
        backgroundColor:
            (context.read<ThemeCubit>().getTheLatestThemeChoice() == 'light')
                ? Theme.of(context).primaryColorDark
                : Theme.of(context).primaryColorDark,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0))),
        elevation: 8,
        title: Padding(
          padding:
              (context.read<LocalizationCubit>().getTheLatestLanguageChoice() ==
                      '')
                  ? const EdgeInsets.only(left: 24, bottom: 8)
                  : const EdgeInsets.only(right: 24, bottom: 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}

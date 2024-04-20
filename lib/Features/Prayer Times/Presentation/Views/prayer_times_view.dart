import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:quran_app/core/global/SharedWidgets/custom_app_bar_widget.dart';
import 'package:quran_app/core/global/SharedWidgets/custom_sliver_app_bar_widget.dart';
import 'package:quran_app/core/global/SharedWidgets/general_app_bar.dart';
import 'package:quran_app/core/global/localization/generated/l10n.dart';
import 'package:quran_app/core/global/themes/AppColors/app_colors_dark.dart';

class PrayerTimes extends StatelessWidget {
  const PrayerTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GeneralAppBar(title: S.of(context).PrayerTimes),
            const Gap(20),
            const UpComingPrayerCard(),
            // const Gap(10),
            PrayerTimeListView()
          ],
        ),
      ),
    );
  }
}

class UpComingPrayerCard extends StatelessWidget {
  const UpComingPrayerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).primaryColorDark),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "الفجر",
                  style: TextStyle(color: Colors.white),
                ),
                Gap(10),
                Text("4:16 ص")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.sunny,
                  color: AppColorsDark.primaryColor,
                  size: 55,
                ),
                Gap(10),
                Text("24 رمضان")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "الوقت المتبقي ",
                  style: TextStyle(color: Colors.white),
                ),
                Gap(10),
                Text("01 : 03 : 03")
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PrayerItemWidget extends StatelessWidget {
  const PrayerItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).primaryColorDark),
      child: ListTile(
        leading: Icon(
          Icons.sunny,
          color: AppColorsDark.primaryColor,
        ),
        title: Text(
          "الفجر",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        trailing: Text(
          "4:16 ص",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}

class PrayerTimeListView extends StatelessWidget {
  const PrayerTimeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: MediaQuery.of(context).size.height * 0.6,
      child: ListView.builder(
          //  shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 5),
          itemCount: 5,
          itemBuilder: (context, index) {
            return PrayerItemWidget();
          }),
    );
  }
}

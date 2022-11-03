import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity_app/Values/values.dart';
import 'package:productivity_app/widgets/dummy/profile_dummy.dart';

class DashboardNav extends StatelessWidget {
  final String title;
  final String image;
  final IconData icon;
  final StatelessWidget? page;
  final VoidCallback? onImageTapped;


  DashboardNav(
      {Key? key,
      required this.title,
      required this.icon,
      required this.image,
      this.page,
      this.onImageTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(this.title, style: AppTextStyles.header2),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        SizedBox(width: 40),
        InkWell(
          onTap: onImageTapped,
          child: ProfileDummy(
              color: HexColor.fromHex("93F0F0"), dummyType: ProfileDummyType.Image, image: this.image, scale: 1.2),
        )
      ])
    ]);
  }
}

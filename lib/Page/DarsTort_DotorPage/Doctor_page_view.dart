import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badge;
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_modul_besh/Model/Doctor_tile_model.dart';
import 'package:flutter_modul_besh/Page/DarsTort_DotorPage/doctorPage.dart';
import 'package:flutter_modul_besh/Utils/constants/AppColors.dart';
import 'package:flutter_modul_besh/Utils/constants/constant.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class DoctorListView extends StatefulWidget {
  const DoctorListView({super.key});

  @override
  State<DoctorListView> createState() => _DoctorListViewState();
}

class _DoctorListViewState extends State<DoctorListView> {
  final List<DoctorTileModel?> _listDoctorTile = [
    const DoctorTileModel(
        image: AppImage.doctor,
        isOnline: true,
        isFavourite: true,
        name: 'Dr. Rodger Strack',
        profession: 'Heart Surgeon, London, England',
        rating: 4.8),
    const DoctorTileModel(
        image: AppImage.doctor,
        isOnline: true,
        isFavourite: true,
        name: 'Dr. Rodger Strack',
        profession: 'Heart Surgeon, London, England',
        rating: 4.8),
    const DoctorTileModel(
        image: AppImage.doctor,
        isOnline: true,
        isFavourite: true,
        name: 'Dr. Rodger Strack',
        profession: 'Heart Surgeon, London, England',
        rating: 4.8),
    const DoctorTileModel(
        image: AppImage.doctor,
        isOnline: true,
        isFavourite: true,
        name: 'Dr. Rodger Strack',
        profession: 'Heart Surgeon, London, England',
        rating: 4.8),
    const DoctorTileModel(
        image: AppImage.doctor,
        isOnline: true,
        isFavourite: true,
        name: 'Dr. Rodger Strack',
        profession: 'Heart Surgeon, London, England',
        rating: 4.8),
  ];

  final ScrollController _scrollController = ScrollController();
  double _searchPasition = 0;

  @override
  void initState() {
    _scrollController.addListener(listenScroll);
    super.initState();
  }

  listenScroll() {
    if (_scrollController.position.pixels > 20) {
      _searchPasition = -100;
      setState(() {});
    } else {
      _searchPasition = 0;
      setState(() {});
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void showInfoDialog(DoctorTileModel doctor, int index) {
    double rating = 0;
    showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: const Text('Rate'),
              content: Center(
                child: RatingBar.builder(
                    initialRating: doctor.rating.toDouble(),
                    minRating: 1,
                    wrapAlignment: WrapAlignment.center,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 30,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: rang.badgeColor,
                        ),
                    onRatingUpdate: (newRating) {
                      debugPrint('$rating');
                      rating = newRating;
                    }),
              ),
              actions: [
                CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed: () {
                      if (Navigator.canPop(context)) {
                        DoctorTileModel Doctor =
                            _listDoctorTile[index]!.copyWith(rating: rating);
                        _listDoctorTile.removeAt(index);
                        _listDoctorTile.insert(index, Doctor);
                        setState(() {});
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text('save'))
              ],
            ),
        barrierDismissible: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const AppTextWidget('Top Doctors'),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          //*------------Body
          AnimationLimiter(
            child: ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 80),
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  final DoctorTileModel? doctorTileModel =
                      _listDoctorTile[index];
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 600),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: Slidable(
                        key: ValueKey<int>(index),
                        endActionPane: ActionPane(
                          motion: const DrawerMotion(),
                          children: [
                            SlidableAction(
                                onPressed: (context) {
                                  showInfoDialog(doctorTileModel!, index);
                                },
                                backgroundColor: rang.badgeColor,
                                foregroundColor: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                icon: Icons.star,
                                label: 'Rate')
                          ],
                        ),
                        child: _CustomDoctorTile(
                          doctorTileModel: doctorTileModel,
                          onTab: () {},
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                itemCount: _listDoctorTile.length),
          ),

          //*---------Search Field
          AnimatedPositioned(
            top: _searchPasition,
            left: 0,
            right: 0,
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeIn,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: SizedBox(
                height: 54,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(CupertinoIcons.search),
                    hintText: 'Search doctor',
                    hintStyle: AppTextStyles.mediumText.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        color: const Color(0xff8a96bc)),
                    prefixIconColor: const Color(0xff8a96bc),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            width: 2.5, color: Color(0xffF7F8F8))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            width: 2.5, color: Color(0xffF7F8F8))),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            width: 2.5, color: Color(0xffF7F8F8))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            width: 2.5, color: Color(0xffF7F8F8))),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            width: 2.5, color: Color(0xffF7F8F8))),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            width: 2.5, color: Color(0xffF7F8F8))),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      )),
    );
  }
}

class _CustomDoctorTile extends StatelessWidget {
  final DoctorTileModel? doctorTileModel;
  final VoidCallback onTab;
  const _CustomDoctorTile(
      {super.key, required this.doctorTileModel, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.5,
            color: const Color(0xffF7F8F8),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    badge.Badge(
                      position: badge.BadgePosition.topEnd(end: -1, top: -1),
                      badgeStyle: badge.BadgeStyle(
                          badgeColor: doctorTileModel!.isOnline
                              ? rang.badgeColor
                              : Colors.red,
                          padding: const EdgeInsets.all(8),
                          borderSide:
                              const BorderSide(width: 2, color: Colors.white)),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: rang.kokrang,
                            image: DecorationImage(
                                image: AssetImage(doctorTileModel!.image))),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star_half,
                          size: 18,
                          color: rang.badgeColor,
                        ),
                        Text(
                          doctorTileModel!.rating.toString(),
                          style: AppTextStyles.mediumText.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color(0x66080C2F)),
                        )
                      ],
                    )
                  ],
                )),
            const Spacer(
              flex: 1,
            ),
            Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorTileModel!.name,
                      style: AppTextStyles.mediumText
                          .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      doctorTileModel!.profession,
                      style: AppTextStyles.mediumText.copyWith(
                          color: const Color(0xff8a96bc),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 34,
                          child: CupertinoButton(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            onPressed: () {},
                            color: const Color(0xffF7F8F8),
                            child: Text(
                              'Appointment',
                              style: AppTextStyles.mediumText.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 34,
                          width: 34,
                          child: CupertinoButton(
                            padding: const EdgeInsets.all(10),
                            onPressed: () {},
                            color: const Color(0xffF7F8F8),
                            child: const Icon(
                              Icons.message,
                              color: rang.kokrang,
                              size: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 34,
                          width: 34,
                          child: CupertinoButton(
                            padding: const EdgeInsets.all(10),
                            onPressed: () {},
                            color: const Color(0xffF7F8F8),
                            child: Icon(
                              Icons.favorite,
                              color: doctorTileModel!.isFavourite
                                  ? rang.kokrang
                                  : Colors.grey,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../core/constants/styles.dart';

class CarouselItemContainer extends StatelessWidget {
  final int index;

  const CarouselItemContainer({Key? key, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(24),
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: AssetImage(
                  'imgs/banner_img.png',
                ),
                colorFilter: ColorFilter.mode(
                    index.isEven ? kButtonColor : kBannerColor,
                    BlendMode.hardLight),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  'Lorem ipsum dolor sit amet,'
                  ' consectetur adipiscing elit.'
                  'Praesent gravida felis ac sem aliquet viverra a quis purus. Donec congue libero enim. Aenean condimentum euismod felis et accumsan. ',
                  strutStyle: StrutStyle(height: 2),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kBackgroundColorDark),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Flexible(
                child: SizedBox(
                  width: 350,
                  child: Text(
                    'Praesent gravida felis ac sem aliquet viverra a quis purus.'
                    'Donec congue libero enim. Aenean condimentum euismod felis et accumsan. ',
                    strutStyle: StrutStyle(height: 2),
                    textScaleFactor: 0.95,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: kBackgroundColorDark),
                  ),
                ),
              ),
            ],
          ),
        ),
        //**I think assets were missing the correct background with phone included, we can either added in code or provide a complete graphic asset for the add which is better imo */
        Positioned(
          bottom: -24,
          right: 0,
          child: Image.asset(
            'imgs/phones.png',
            height: 175,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yojad_flutter_task/core/constants/styles.dart';

import 'widgets.dart';

class PremiumAdContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Banner(
        location: BannerLocation.topStart,
        message: 'Premium Ad',
        color: kBannerColor,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'imgs/car.png',
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              AdInformationColumn(),
              SizedBox(
                width: 250,
                child: Divider(
                  indent: 2,
                  height: 4,
                  thickness: 0.2,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 4, right: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('imgs/avatar.png', height: 45),
                      SizedBox(
                        width: 8,
                      ),
                      Center(
                        child: Text('Username here'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 64),
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite_outline_outlined,
                            ),
                            Text('50'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

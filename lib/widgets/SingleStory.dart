import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taptalk/Helpers/Constants.dart';

class SingleStory extends StatelessWidget {
  const SingleStory(
      {super.key, this.mine = false, required this.image, required this.user});

  final bool mine;
  final String image;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: 80,
              height: 80,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                  border: Border.all(color: Constants.primaryColor, width: 3),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image))),
            ),
            if (!mine)
              Text(
                user,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
          ],
        ),
        if (mine)
          Positioned(
            bottom: 20,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(100)),
              width: 20,
              height: 20,
              child: const Icon(
                Iconsax.add,
                color: Constants.white,
                size: 12,
              ),
            ),
          ),
      ],
    );
  }
}

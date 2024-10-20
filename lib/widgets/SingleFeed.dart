import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taptalk/Helpers/Constants.dart';

class SingleFeed extends StatelessWidget {
  const SingleFeed(
      {super.key,
      required this.username,
      required this.date,
      required this.userImage,
      required this.likeCount,
      required this.commentCount,
      required this.postImage});

  final String username;
  final String date;
  final String userImage;
  final String likeCount;
  final String commentCount;
  final String postImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Constants.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                        height: 60, width: 60, fit: BoxFit.cover, userImage),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Text(
                        date,
                        style: const TextStyle(color: Constants.darkGrey),
                      ),
                    ],
                  ),
                ],
              ),

              const Icon(
                Icons.more_horiz,
                color: Constants.darkerGrey,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          // Post image
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              postImage,
              fit: BoxFit.cover,
              height: 280,
              width: double.infinity,
            ),
          ),

          const SizedBox(
            height: 8,
          ),

          // Post content
          const Text(
            "This is the content for this post, this is a dummy content, to show how this post would look alike, and yeah we're out of inspiration",
            style: TextStyle(color: Constants.darkGrey),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 12,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(Iconsax.heart),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(likeCount),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Row(
                    children: [
                      const Icon(Iconsax.message_notif),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(commentCount),
                    ],
                  ),
                ],
              ),

              // Bookmark icon
              const Icon(Iconsax.bookmark)
            ],
          )
        ],
      ),
    );
  }
}

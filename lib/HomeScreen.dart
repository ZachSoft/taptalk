import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:taptalk/Helpers/Constants.dart';
import 'package:taptalk/widgets/SingleFeed.dart';
import 'package:taptalk/widgets/SingleStory.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.lightGrey,
      // appbar

      appBar: AppBar(
        // title
        title: const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "TapTalk",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20, fontFamily: 'lato'),
          ),
        ),
        // actions

        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                // Notification icons
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Constants.softGrey,
                  ),
                  height: 40,
                  width: 40,
                  child: const Icon(Iconsax.notification),
                ),
                const SizedBox(
                  width: 8,
                ),
                // message icon
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Constants.softGrey,
                  ),
                  height: 40,
                  width: 40,
                  child: const Icon(Iconsax.direct_inbox),
                ),
              ],
            ),
          )

          // Message icon
        ],
      ),

      // Body

      body: ListView(
        children: [
          // --------- Stories list

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SizedBox(
                    width: 25,
                  ),
                  SingleStory(
                    image: Constants.avatar1,
                    mine: true,
                    user: 'Me',
                  ),
                  SingleStory(
                    image: Constants.avatar2,
                    user: 'Mariko',
                  ),
                  SingleStory(
                    image: Constants.avatar3,
                    user: 'Chris',
                  ),
                  SingleStory(
                    image: Constants.avatar4,
                    user: 'Luise',
                  ),
                  SingleStory(
                    image: Constants.avatar5,
                    user: 'Reez',
                  ),
                  SingleStory(
                    image: Constants.feedimage2,
                    user: 'Leony',
                  ),
                ],
              ),
            ),
          ),

          // -------- feed list

          SizedBox(
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                SingleFeed(
                  date: "1 hour ago",
                  postImage: Constants.avatar2,
                  likeCount: "2k",
                  commentCount: "1k",
                  userImage: Constants.feedimage2,
                  username: "Thomas Johnson",
                ),
                SingleFeed(
                  date: "1 hour ago",
                  postImage: Constants.avatar4,
                  likeCount: "2k",
                  commentCount: "1k",
                  userImage: Constants.feedimage3,
                  username: "Peter Johnson",
                ),
                SingleFeed(
                  date: "1 hour ago",
                  postImage: Constants.avatar3,
                  likeCount: "2k",
                  commentCount: "1k",
                  userImage: Constants.feedimage4,
                  username: "Thomas Johnson",
                ),
              ],
            ),
          )
        ],
      ),

      // bottom navBar
      bottomNavigationBar: NavigationBar(
        backgroundColor: Constants.softGrey,
        indicatorColor: Constants.primaryColor,
        indicatorShape: const CircleBorder(),
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Iconsax.home,
                color: Constants.white,
              ),
              label: "Feed"),
          NavigationDestination(icon: Icon(Iconsax.people), label: "People"),
          NavigationDestination(icon: Icon(Iconsax.direct), label: "Inbox"),
          NavigationDestination(icon: Icon(Iconsax.setting), label: "Settings"),
        ],
      ),
    );
  }
}

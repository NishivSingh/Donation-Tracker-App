import 'package:flutter/material.dart';
import 'package:duck_cart/creator_donation_page.dart';

class Profile extends StatefulWidget {
  final String name;
  final String profession;
  final String tagline;
  final String profileImageUrl;
  const Profile(
      {super.key,
      required this.name,
      required this.profession,
      required this.tagline,
      required this.profileImageUrl});
  @override
  ProfileBuilder createState() => ProfileBuilder();
}

class ProfileBuilder extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreaterDonationPage(
                        creatorName: widget.name,
                        creatorTagline: widget.tagline)),
              );
            },
            child: Container(
              width: 160,
              height: 120,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  widget.profileImageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          // width: 300,
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                widget.profession,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

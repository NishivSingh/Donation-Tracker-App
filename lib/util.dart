import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  const Profile({super.key});
  @override
  ProfileBuilder createState() => ProfileBuilder();
}
class ProfileBuilder extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 160,
        height: 120,
        decoration: const BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        
        ),
      const SizedBox(height: 5),
      Padding(
        // width: 300,
        padding: EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'userName',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Profession',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    ],
);

;
  }
}
import 'package:flutter/material.dart';

class Creator {
  final String id;
  final String name;
  final String profession;
  final String tagline;
  final String profileImageUrl;

  Creator({required this.id,required this.name,required this.profession,required this.tagline,required this.profileImageUrl});
}

class CreatorsProvider extends ChangeNotifier {
  final List<Creator> _creators = [
    Creator(id : "C1", name: "BB ki Vines",profession : "Youtuber",tagline:"Support BB ki Vines to show you love", profileImageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcWnEnCt0JggZoDK--1jZOgsW00Hd5xgUPtH1cD-exXTEcCB7rWSF3up42SHlAgZS9qKg&usqp=CAU",),
    Creator(id : "C2" ,name: "Carryminati",profession : "Youtuber",tagline:"Send your love to Carriminati to become a real fan", profileImageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh5h4lpgkULVR-B6VGbzXD1lY6prFXDffU6Q&usqp=CAU",),
    Creator(id : "C3",name: "PewDiePie",profession : "Musician",tagline:"Send your love by supporting this channel", profileImageUrl: "https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Fsundaytimes%2Fprod%2Fweb%2Fbin%2F88daa4c4-893b-11ea-a376-3b3698706ab4.jpg?crop=1300%2C867%2C0%2C0",),
  ];
  List<Creator> get creators => _creators;
}

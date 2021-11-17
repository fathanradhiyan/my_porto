import 'package:flutter/cupertino.dart';
import 'package:my_porto/models/achievements_model.dart';

class AchievementsProvider with ChangeNotifier {

  List<AchievementsModel> _achievements = [
    AchievementsModel(
      id: "sertif01",
      title: "Ijazah Sarjana Teknik Informatika",
      verifiedBy: "UIN Jakarta",
      releaseDate: "2021",
      expireDate: "-",
      imageUrl: "assets/images/ijazah.jpg",
    ),
    AchievementsModel(
      id: "sertif02",
      title: "Mobile Apps Coaching",
      verifiedBy: "Course-Net Indonesia",
      releaseDate: "2018",
      expireDate: "-",
      imageUrl: "assets/images/coursenet_1.jpg",
    ),
    AchievementsModel(
      id: "sertif03",
      title: "Mobile Apps Coaching : Grade B",
      verifiedBy: "Course-Net Indonesia",
      releaseDate: "2018",
      expireDate: "-",
      imageUrl: "assets/images/coursenet_2.jpg",
    ),
    AchievementsModel(
      id: "sertif04",
      title: "Memulai Pemrograman dengan Kotlin",
      verifiedBy: "Dicoding Indonesia",
      releaseDate: "2021",
      expireDate: "2024",
      imageUrl: "assets/images/dicoding_kotlin.jpg",
    ),
    AchievementsModel(
      id: "sertif05",
      title: "Belajar Prinsip Pemrograman SOLID",
      verifiedBy: "Dicoding Indonesia",
      releaseDate: "2021",
      expireDate: "2024",
      imageUrl: "assets/images/dicoding_solid.jpg",
    ),
    AchievementsModel(
      id: "sertif06",
      title: "Belajar Membuat Aplikasi Android untuk Pemula",
      verifiedBy: "Dicoding Indonesia",
      releaseDate: "2021",
      expireDate: "2024",
      imageUrl: "assets/images/dicoding_android.png",
    ),
    AchievementsModel(
      id: "sertif07",
      title: "Kursus HTML & CSS",
      verifiedBy: "Progate",
      releaseDate: "2021",
      expireDate: "-",
      imageUrl: "assets/images/progate_web.png",
    ),
    AchievementsModel(
      id: "sertif08",
      title: "HTML5 Application Development Fundamentals",
      verifiedBy: "Microsoft Technology Associate",
      releaseDate: "2018",
      expireDate: "-",
      imageUrl: "assets/images/microsoft_html.jpg",
    ),
    AchievementsModel(
      id: "sertif09",
      title: "Software Development Fundamentals",
      verifiedBy: "Microsoft Technology Associate",
      releaseDate: "2017",
      expireDate: "-",
      imageUrl: "assets/images/microsoft_sdf.jpg",
    ),
    AchievementsModel(
      id: "sertif10",
      title: "Engineer on Site in Indonesia Asian Paragames 2018",
      verifiedBy: "PT. Graha Karya Informasi",
      releaseDate: "2018",
      expireDate: "-",
      imageUrl: "assets/images/volunteer_apg.jpg",
    ),
    AchievementsModel(
      id: "sertif11",
      title: "How to Win and Influence People",
      verifiedBy: "Morning Star Success",
      releaseDate: "2020",
      expireDate: "-",
      imageUrl: "assets/images/influence.png",
    ),
  ];

  List<AchievementsModel> get achievement {
    return [..._achievements];
  }
}

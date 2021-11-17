import 'package:flutter/material.dart';
import 'package:my_porto/models/academics_model.dart';

class AcademicsProvider with ChangeNotifier {
  List <AcademicsModel> _academics = [

    AcademicsModel(
      id: 'academic01',
      academyName: 'UIN Syarif Hidayatullah',
      academyGrade: 'S1',
      academyDomicile: 'Jakarta',
      academyAddress: 'Jl. Ir H. Juanda No.95, Cemp. Putih, Kec. Ciputat Tim., Kota Tangerang Selatan, Banten',
      academyDegree: 'Teknik Informatika',
      graduateYear: '2021',
      contactInfo: '(021) 7401925',
      imageUrl: 'https://spmb.uinjkt.ac.id/spmbv2/asset/img/uinjkt.jpg',
    ),
    AcademicsModel(
      id: 'academic02',
      academyName: 'Pondok Pesantren Daar el-Qolam 2',
      academyGrade: 'SMA',
      academyDomicile: 'Banten',
      academyAddress: 'Jl.Raya Serang Km No.36, Pasir Gintung, Jayanti, Tangerang, Banten',
      academyDegree: 'IPA',
      graduateYear: '2015',
      contactInfo: '(021) 59576730',
      imageUrl: 'http://2.bp.blogspot.com/-h_xwICF2pkc/UYTWXtNjC5I/AAAAAAAAAGM/zFLYchG5l4M/s1600/P3010136.JPG',
    ),
    AcademicsModel(
      id: 'academic03',
      academyName: 'Pondok Pesantren Daar el-Qolam 2',
      academyGrade: 'SMP',
      academyDomicile: 'Banten',
      academyAddress: 'Jl.Raya Serang Km No.36, Pasir Gintung, Jayanti, Tangerang, Banten',
      academyDegree: '',
      graduateYear: '2012',
      contactInfo: '(021) 59576730',
      imageUrl: 'https://harga.web.id/wp-content/uploads/Ilustrasi-Gedung-Pondok-Pesantren-Daar-el-Qolam-daarelqolam.ac_.id_.png',
    ),
    AcademicsModel(
      id: 'academic04',
      academyName: 'SDIT AL-Mughni',
      academyGrade: 'SD',
      academyDomicile: 'Jakarta Selatan',
      academyAddress: 'Jl. Jendral Gatot Subroto Kav .26 Jakarta Selatan',
      academyDegree: '',
      graduateYear: '2009',
      contactInfo: '(021) 52961471',
      imageUrl: 'https://sditalmughni.sch.id/wp-content/uploads/2020/10/gedung-al-mughni.jpg',
    ),
  ];

  List<AcademicsModel> get academics {
    return [..._academics];
  }
}
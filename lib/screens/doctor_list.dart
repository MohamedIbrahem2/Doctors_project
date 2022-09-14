import 'package:doctors_project/widget/doctorcont.dart';
import 'package:doctors_project/widget/info_widget.dart';
import 'package:flutter/material.dart';
class doctor extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(right: 25,left: 25,bottom: 25,top:40),
        children: const [
          mainscrn(photo: "assets/images/doc1.jpg",
              spechil: " cardiologist",
              studname: "Dr/john",
              Return: info(
                  Photo: "assets/images/doc1.jpg",
                  name: "Dr/John\ncardiologist",
                  star: "4.5 from 5",
                  pati: "200+",
                  bio: "Dr John regins recevied his specialist degree after compliting his education at the university of indonisia"),
              top: 25
          ),
          SizedBox(height: 20,),
          mainscrn(photo: "assets/images/doc2.jpg",
              spechil: " Gastroenterology",
              studname: "Dr/mary",
              Return: info(
                  Photo: "assets/images/doc2.jpg",
                  name: "Dr/mary\nGastroenterology",
                  star: "4.7 from 5",
                  pati: "350+",
                  bio: "Dr mary regins recevied his specialist degree after compliting his education at the university of indonisia"),
              top: 25
          ),
          SizedBox(height: 20,),
          mainscrn(photo: "assets/images/doc3.jpg",
              spechil: " Ophthalmology",
              studname: "Dr/jack",
              Return: info(
                  Photo: "assets/images/doc3.jpg",
                  name: "Dr/jack\nOphthalmology",
                  star: "3.9 from 5",
                  pati: "150+",
                  bio: "Dr jack regins recevied his specialist degree after compliting his education at the university of indonisia"),
              top: 25
          ),
          SizedBox(height: 20,),
          mainscrn(photo: "assets/images/doc4.jpg",
              spechil: " Pediatrics",
              studname: "Dr/tom",
              Return: info(
                  Photo: "assets/images/doc4.jpg",
                  name: "Dr/tom\nPediatrics",
                  star: "4.9 from 5",
                  pati: "500+",
                  bio: "Dr tom regins recevied his specialist degree after compliting his education at the university of indonisia"),
              top: 25
          ),
          SizedBox(height: 20,),
          mainscrn(photo: "assets/images/doc5.jpg",
              spechil: " Hematology",
              studname: "Dr/scarlet",
              Return: info(
                  Photo: "assets/images/doc5.jpg",
                  name: "Dr/scarlet\nHematology",
                  star: "4.2 from 5",
                  pati: "180+",
                  bio: "Dr scarlet regins recevied his specialist degree after compliting his education at the university of indonisia"),
              top: 25
          ),
          SizedBox(height: 20,),
          mainscrn(photo: "assets/images/doc6.jpg",
              spechil: " Neurology",
              studname: "Dr/tony",
              Return: info(
                  Photo: "assets/images/doc6.jpg",
                  name: "Dr/tony\nNeurology",
                  star: "4.7 from 5",
                  pati: "420+",
                  bio: "Dr tony regins recevied his specialist degree after compliting his education at the university of indonisia"),
              top: 25
          ),
        ],
      ),
    );
  }
}


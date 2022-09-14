import 'package:flutter/material.dart';
class info extends StatelessWidget {
final Photo;
final String name;
final String star;
final String pati;
final String bio;

  const info({super.key, required this.Photo, required this.name, required this.star, required this.pati, required this.bio});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          Image.asset("assets/images/login.png"),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 300,top: 50),
                child: Icon(Icons.arrow_back_ios,
                  size: 25,
                  color: Colors.black87,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(name,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                  Expanded(
                    child: Container(
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        image: DecorationImage(image: AssetImage(Photo))
                      ),
                    ),
                  ),

            ],
          ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Icon(Icons.star,
                      color: Colors.yellow,),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text("Rating",style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),),
                        Text(star)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Icon(Icons.group,
                      color: Colors.blueAccent,),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text("Patient",style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),),
                        Text(pati)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text("Biograpahy",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(bio,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text("Schedule",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("18",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  Text("19",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  Text("20",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  Text("21",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),

                ],
              ),
              ElevatedButton(onPressed: (){},
                  child:  Text("Make An Appointement >>>",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
              ),
          ]
          ),
        ],
      ),
    );
  }
}

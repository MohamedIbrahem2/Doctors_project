import 'package:flutter/material.dart';
class mainscrn extends StatelessWidget {
  final photo;
  final String spechil;
  final String studname;
  final Return;
  final double top;

  const mainscrn({super.key, required this.photo, required this.spechil
    ,required this.studname,
    required this.Return,
    required this.top});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          image: DecorationImage(image: AssetImage(photo),fit: BoxFit.fill)
      ),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: top, right: 180),
            child: Text(studname,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: 75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 80),
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black87.withOpacity(0.7),
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),

                    ),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.monitor_heart,
                          color: Colors.blue,
                        ),
                        Text(spechil,
                          style: TextStyle(
                              color: Colors.blue
                          ),
                        )
                      ],
                    )
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Return));
                  },
                    child:
                    Icon(Icons.arrow_forward,
                      color: Colors.blue,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary:Colors.black87.withOpacity(0.7),
                        shape: CircleBorder()
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

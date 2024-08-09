import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  List dList;
  DetailScreen({
    required this.dList
});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {


  List details=[
    {
      "id": "1",
      "name": "Vignesh",
      "mobile": "9677403640",
      "mail" : "vignesh@gmail.com",
      "addr" : "4,Thirumurugan Nagar , Kajamalai"

  },
    {
      "id": "1",
      "name": "Vivek",
      "mobile": "9677403640",
      "mail" : "vignesh@gmail.com",
      "addr" : "4,Thirumurugan Nagar , Kajamalai"

    },
    {
      "id": "1",
      "name": "Vijay",
      "mobile": "9677403640",
      "mail" : "vignesh@gmail.com",
      "addr" : "4,Thirumurugan Nagar , Kajamalai"

    },
    {
      "id": "1",
      "name": "John",
      "mobile": "9677403640",
      "mail" : "vignesh@gmail.com",
      "addr" : "4,Thirumurugan Nagar , Kajamalai"

    },
    {
      "id": "1",
      "name": "Ajith",
      "mobile": "9677403640",
      "mail" : "vignesh@gmail.com",
      "addr" : "4,Thirumurugan Nagar , Kajamalai"

    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Details"),
      ),
      body: ListView.builder(
        shrinkWrap: true,physics: ScrollPhysics(),
        itemCount: widget.dList.length,
        itemBuilder: (BuildContext context , int index){
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      )
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.dList[index]['name'] + " - " + widget.dList[index]['mobile']),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Mail ID : "+widget.dList[index]['mail']),
                  ),




                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Address : "+widget.dList[index]['addr']),
                  ),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}

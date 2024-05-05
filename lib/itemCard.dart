import 'package:flutter/material.dart';
import 'data.dart';

class CardListItem extends StatelessWidget {
  List<itemsForCard> itemsCa = [
    itemsForCard(
        name: "Kuta Selatan \nBali, Indonesia",
        bgpPicUrl:
            "https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        rateStar: 3.7,
        date: "Aug 15, 2019",
        headerPicUrl:
            "https://images.pexels.com/users/avatars/570147530/felix-mejica-983.jpeg?auto=compress&fit=crop&h=130&w=130&dpr=1"),
    itemsForCard(
        name: "Dambulla, CP \nSri Lanka",
        date: "Jun 11, 2021",
        bgpPicUrl:
            "https://images.pexels.com/photos/1078983/pexels-photo-1078983.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        rateStar: 4.78,
        headerPicUrl:
            "https://images.pexels.com/users/avatars/333270/oliver-sjostrom-718.jpeg?auto=compress&fit=crop&h=130&w=130&dpr=1"),
    itemsForCard(
        name: "Bol \nCroatia",
        date: "Mar 26, 2018",
        bgpPicUrl:
            "https://images.pexels.com/photos/1433052/pexels-photo-1433052.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        rateStar: 5,
        headerPicUrl:
            "https://images.pexels.com/users/avatars/150604297/pexels-user-648.jpeg?auto=compress&fit=crop&h=130&w=130&dpr=1"),
    itemsForCard(
        name: "Dambulla \nSri Lanka",
        date: "Dec 07, 2015",
        bgpPicUrl:
            "https://images.pexels.com/photos/1074523/pexels-photo-1074523.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        rateStar: 4.1,
        headerPicUrl:
            "https://images.pexels.com/users/avatars/570147530/felix-mejica-983.jpeg?auto=compress&fit=crop&h=130&w=130&dpr=1"),
    itemsForCard(
        name: "Tambon Ao Nang \nThailand",
        date: "Sep 14, 2012",
        bgpPicUrl:
            "https://images.pexels.com/photos/945460/pexels-photo-945460.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        rateStar: 3.9,
        headerPicUrl:
            "https://images.pexels.com/users/avatars/1141370437/marcelo-gonzalez-383.jpeg?auto=compress&fit=crop&h=130&w=130&dpr=1"),
  ];

  CardListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          width: 160,
          //height: 160,
          margin: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(itemsCa[index].bgpPicUrl),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                              itemsCa[index].headerPicUrl,
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 14,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      itemsCa[index].rateStar.toString(),
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Text(
                  itemsCa[index].name,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 10),
                child: Text(itemsCa[index].date,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 210, 204, 204))),
              ),
            ],
          ),
        );
      },
      itemCount: itemsCa.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
    );
  }
}

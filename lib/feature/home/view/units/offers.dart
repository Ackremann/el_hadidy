import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 1.2,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
              colors: [Color(0xff53E88B), Color(0xff15BE77)])),
      child: Stack(
        children: [
          Opacity(
            opacity: .5,
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/BACKGROUND%202.png?alt=media&token=0d003860-ba2f-4782-a5ee-5d5684cdc244",
                fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Image.png?alt=media&token=8256c357-cf86-4f76-8c4d-4322d1ebc06c"),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                "Lorem ipsum \n Lorem ipsum",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

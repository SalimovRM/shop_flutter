import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.70
      ,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            // height: MediaQuery.of(context).size.height * 3,
            // width: MediaQuery.of(context).size.width * 4.5,
            padding: EdgeInsets.only(left: 15, right: 15, top: 10,),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
          
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '-50%',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/itemPage');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Image.asset(
                      'assets/images/$i.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                 Expanded(
                   child: Column(
                    children: [
                      Text('Product Name',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF4C53A5),
                                fontWeight: FontWeight.bold)),
                      
                      Text(
                      'Write description of product',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '55 сом',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        Icon(
                          Icons.shopping_cart_checkout,
                          color: Color(0xFF4C53A5),
                        )
                      ],
                    ),
                    ],
                                 ),
                 ),
               
                // Padding(
                //   padding: EdgeInsets.symmetric(vertical: 10),
                //   child: 
                // )
              ],
            ),
          )
      ],
    );
  }
}

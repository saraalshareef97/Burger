import 'package:flutter/material.dart';

class BurgerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blueGrey[50],
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Center(
                widthFactor: 4,
                child: Image(image: AssetImage('images/BURGERROAD.png')),
              ),
              actions: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Icon(Icons.add_shopping_cart,
                        color: Colors.yellow[600])),
              ],
              leading: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text('EN',
                        style: TextStyle(
                            color: Colors.yellow[600],
                            fontSize: 15,
                            fontWeight: FontWeight.w900)),
                  ),
                  Icon(Icons.arrow_downward, color: Colors.yellow[600])
                ],
              ),
            ),
            body: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(5, 15, 5, 5),
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: _buildImageColumn(),
                ),
                //margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                // _offers()
              ],
            )));
  }
}

Widget _buildImageColumn() => Container(
      decoration: BoxDecoration(
          //color: Colors.black26,
          ),
      child: Column(
        children: [
          _buildImageRow(1),
          _buildImageRow(3),
        ],
      ),
    );
Widget _buildDecoratedImage(int imageIndex) => Expanded(
      child: Container(
          decoration: BoxDecoration(
              // border: Border.all(width: 10, ),
              // borderRadius: const BorderRadius.all(const Radius.circular(8)),
              ),
          margin: const EdgeInsets.all(4),
          child: Image(
            image: AssetImage('images/pic$imageIndex.png'),
            fit: BoxFit.fill,
          )
          //Image.asset('images/pic$imageIndex.png'),
          ),
    );

Widget _buildImageRow(int imageIndex) => Row(
      children: [
        _buildDecoratedImage(imageIndex),
        _buildDecoratedImage(imageIndex + 1),
      ],
    );

// class Services extends StatelessWidget {
//   final List<SizedBox> items = <SizedBox>[
//     SizedBox(
//       child: Card(
//           elevation: 5,
//           child: Image(
//               fit: BoxFit.fill,
//               image: AssetImage('images/Meals & Sanwishes1.png'))),
//     ),
//     SizedBox(
//       child: Card(
//           elevation: 5,
//           child: Image(
//               fit: BoxFit.fill, image: AssetImage('images/Salads-sides.png'))),
//     ),
//     SizedBox(
//       child: Card(
//           elevation: 5,
//           child: Image(
//               fit: BoxFit.fill, image: AssetImage('images/Desserts.png'))),
//     ),
//     SizedBox(
//       child: Card(
//           elevation: 5,
//           child: Image(
//               fit: BoxFit.fill, image: AssetImage('images/Beverages.png'))),
//     ),
//   ];

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: MediaQuery.of(context).size.width /
//             (MediaQuery.of(context).size.height / 2),
//       ),
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         return GridTile(
//             child: Container(
//                 margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                 padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                 child: items[index]));
//       },
//     ),
//   );
//  }
//}

Widget _offers() => Container(
    //margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
    height: 250.0,
    width: 150,
    child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
      Image(
        image: AssetImage('images/card-one'),
      ),
      Image(
        image: AssetImage('images/card-one'),
      ),
      Image(
        image: AssetImage('images/card-one'),
      ),
    ]));

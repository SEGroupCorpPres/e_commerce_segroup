import 'package:e_commerce_segroup/components/products.dart';
import 'package:flutter/material.dart';

class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_On_The_Cart = [
    {
      "name" : "Blazer",
      "picture" : "images/products/Mix Full HD 2 (118).jpg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "green",
      "quantity": 1,
    },
    {
      "name" : "Dress",
      "picture" : "images/products/Mix Full HD 2 (119).jpg",
      "old_price": 145,
      "price": 100,
      "size": "L",
      "color": "blue",
      "quantity": 3,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_On_The_Cart.length,
        itemBuilder: (
            context,
            index
        ){
          return  Single_Cart_Products(
            cart_product_name: Products_On_The_Cart[index]['name'],
            cart_product_color: Products_On_The_Cart[index]['color'],
            cart_product_quantity: Products_On_The_Cart[index]['quantity'],
            cart_product_size: Products_On_The_Cart[index]['size'],
            cart_product_price: Products_On_The_Cart[index]['price'],
            cart_product_picture: Products_On_The_Cart[index]['picture'],
          );
        }
    );
  }
}
class Single_Cart_Products extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_color;
  final cart_product_size;
  final cart_product_quantity;
  Single_Cart_Products(
      {
        this.cart_product_name,
        this.cart_product_color,
        this.cart_product_picture,
        this.cart_product_price,
        this.cart_product_quantity,
        this.cart_product_size,
      }
   );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //======LEADING SECTION========
        leading: new Image.asset(
          cart_product_picture,
          width: 80.0,
          height: 80.0,
        ),
        //=======TITLE SECTION======
        title: new Text(cart_product_name),
        //=======SUBTITLE SECTION======
        subtitle: new Column(
          children: <Widget>[
            //ROW INSIDE THE COLUMN
            new Row(
              children: <Widget>[
                //this section is for the size of the product
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: new Text('Size:'),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: new Text(
                    cart_product_size,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                //=======This section of for the product color=======
                new Padding(
                    padding: EdgeInsets.fromLTRB(
                        20.0, 8.0, 8.0, 8.0
                    ),
                    child: new Text('Color:'),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: new Text(
                    cart_product_color,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            //==========THIS SECTION IS FOR THE PRODUCT PRICE==========
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                '\$${cart_product_price}',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color:Colors.red,
                )
              ),
            ),
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.arrow_drop_up,
                ),
                onPressed: (){},),
            new Text('$cart_product_quantity'),
            new IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                ),
                onPressed: (){},),
          ],
        ),
      ),
    );
  }
  // void addQuantity(){
  //   cart_product_quantity=cart_product_quantity+1;
  // }
}

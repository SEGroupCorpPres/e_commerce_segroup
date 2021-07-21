import 'package:flutter/material.dart';
import 'package:e_commerce_segroup/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name" : "Blazer",
      "picture" : "images/products/Mix Full HD 2 (118).jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name" : "Dress",
      "picture" : "images/products/Mix Full HD 2 (119).jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/Mix Full HD 2 (118).jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name" : "Dress",
      "picture" : "images/products/Mix Full HD 2 (119).jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/Mix Full HD 2 (118).jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name" : "Dress",
      "picture" : "images/products/Mix Full HD 2 (119).jpg",
      "old_price": 120,
      "price": 85,
    },

    {
      "name" : "Dress",
      "picture" : "images/products/Mix Full HD 2 (119).jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/Mix Full HD 2 (118).jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name" : "Dress",
      "picture" : "images/products/Mix Full HD 2 (119).jpg",
      "old_price": 120,
      "price": 85,
    },

    {
      "name" : "Dress",
      "picture" : "images/products/Mix Full HD 2 (119).jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/Mix Full HD 2 (118).jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name" : "Dress",
      "picture" : "images/products/Mix Full HD 2 (119).jpg",
      "old_price": 120,
      "price": 85,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
        itemBuilder: (
            BuildContext context,
            int index)
        {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Single_product(
                  product_name: product_list[index]['name'],
                  product_picture: product_list[index]['picture'],
                  product_old_price: product_list[index]['old_price'],
                  product_price: product_list[index]['price'],
                ),
              );
        }
     );
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;
  Single_product(
      {
        this.product_name,
        this.product_old_price,
        this.product_picture,
        this.product_price,
      }
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text('hero 1'),
          child: Material(
            child: InkWell(onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(
                  //here we are passing the value of the product to the product details page
                    builder: (context) => new  ProductDetails(
                      products_details_name: product_name,
                      products_details_new_price: product_price,
                      products_details_old_price: product_old_price,
                      products_details_picture: product_picture,
                    )
                )
              ) ,
              child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          product_name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                          ),
                        ),
                      ),
                      new Text(
                        '\$${product_price}',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                child: Image.asset(
                  product_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
      ),
    );
  }
}

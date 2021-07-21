import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_segroup/pages/home.dart';
import 'package:e_commerce_segroup/components/products.dart';

class ProductDetails extends StatefulWidget {
  final products_details_name;
  final products_details_new_price;
  final products_details_old_price;
  final products_details_picture;
  ProductDetails(
      {
        this.products_details_name,
        this.products_details_new_price,
        this.products_details_old_price,
        this.products_details_picture,
      }
  );
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage())
            );
          },
          child: Text('Fashapp')
        ),
        actions:  <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}
          ),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.products_details_picture),
              ),
                footer: new Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: new Text(
                      widget.products_details_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text(
                              "\$${widget.products_details_old_price}",
                              style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                        ),
                        Expanded(
                            child: new Text(
                              "\$${widget.products_details_new_price}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          ),
          //================the first buttons==============
          Row(
            children: <Widget>[
              //===============the size button=============
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text('Size'),
                          content: new Text('Choose the size'),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text('close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text('Size'),
                      ),
                      Expanded(
                        child: new Icon(
                            Icons.arrow_drop_down,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text('Color'),
                          content: new Text('Choose the color'),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text('close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text('Color'),
                      ),
                      Expanded(
                          child: new Icon(
                              Icons.arrow_drop_down,
                          ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text('Quantity'),
                          content: new Text('Choose the quantity'),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text('close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text('Quantity'),
                      ),
                      Expanded(
                          child: new Icon(
                              Icons.arrow_drop_down,
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //================the second buttons==============
          Row(
            children: <Widget>[
              //===============the size button=============
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text('Buy now'),
                ),
              ),
              new IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: (){
                  },
              ),
              new IconButton(
                  icon: Icon(
                    Icons.star_border,
                    color: Colors.red,
                  ),
                  onPressed: (){
                  },
              ),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text(
              'Product details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            subtitle: new Text(
                "Bu yil davlatimiz mustaqilligining yigirma uch yilligi nishonlanadi va bu o’tgan davr kelajak sari tanlangan siyosatimiz va yo’limizning to’g’ri tanlanganligini butun dunyo miqiyosida isbotladi. Mamlakatimiz ko’p sohalarda eng yuqori yutuqlarga erishdi. Bunday sohalarga sport, mashinasozlik, qishloq xo’jaligi, medisina va bank sohalarini misol qilib aytishimiz mumkin. Bank sohasinung dunyo miqiyosidagi taraqqiyoti alohida tahlilga loyiq"
               +" Yurtimiz mustaqillikka erishganidan so’ng, mamlakatimiz miqiyosida elеktron to’lov tizimlari (ETT) birinchi bor bank tizimiga joriy etish ishlab chiqildi va uni joriy etish 1994 yil 18 martdagi Vazirlar Maxkamasining 146–sonli «Bank tizimini takomillashtirish va pul-krеdit muomalasini barqarorlashtirish chora- tadbirlari to’grisida»gi Nizom asosida amalga oshirila boshlagandi. Bank sohasidagi elеktron to’lovlar tizimi - bu qog’ozsiz tеxnologiyaga va markaziy bankning elеktron pochtasi vositalari bilan ma'lumotlarni uzatishga va qabul qilishga asoslangan umumdavlat to’lov tizimidir."
            ),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                    'Product name',
                    style: TextStyle(
                        color: Colors.grey,
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(
                    widget.products_details_name
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product brand',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              //REMEMBER TO CREATE THE PRODUCT BRAND
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text('Brand X'),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  'Product condition',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              //ADD THE PRODUCT CONDITION
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text('NEW'),
              ),
            ],
          ),
          //SIMILAR PRODUCTION SECTION
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              'Similar products',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
            ),
          ),
          Container(
            height: 340.0,
            child: Products(),
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
          ),
        ],
      ),
    );
  }
}
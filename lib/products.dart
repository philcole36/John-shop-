import 'package:flutter/material.dart';
import 'package:john_shop_mob/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var product_list=[
    {
      "name":"Patty",
      "picture":"images/shop4",
      "price":140,
    },
{
      "name":"juice",
      "picture":"images/cat/soda .png",
      "price":90,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Single_prod(
          product_name: product_list[index]['name'],
          product_picture: product_list[index]['picture'],
          product_price: product_list[index]['price'],
        );
      });
  }
}
  class Single_prod extends StatelessWidget {
    final product_name;
    final product_picture;
    final product_price;


    Single_prod({
    this.product_name,
    this.product_picture,
    this.product_price,
    });
    @override
    Widget build(BuildContext context) {
      return Card(
        child: Hero(tag: product_name,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
              builder: (context)=> new ProductDetails())),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(product_name,style: TextStyle( fontWeight: FontWeight.bold),
                ),
                title: Text("\$$product_price", style:TextStyle(color: Colors.green,fontWeight: FontWeight.w800),
              ),
            ),
          ),
            child: Image.asset(product_picture,
            fit: BoxFit.cover ,),
           
          ),

        ),),),
        
        
      );
    
  }
  }
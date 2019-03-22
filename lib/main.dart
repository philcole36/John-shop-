import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:john_shop_mob/horizontal_list_view.dart';
import 'package:john_shop_mob/products.dart';


void main(){
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home:HomePage()

      )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState()  => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    Widget image_carousel = new Container(
        height: 200.0,
        child:Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/Shop1.jpg'),
            AssetImage('images/Shop2.jpg'),
            AssetImage('images/Shop3.jpg'),
            AssetImage('images/shop4.jpg'),
            AssetImage('images/shop5.jpg'),
            AssetImage('images/shop6.jpg'),

          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(microseconds: 1000),
          dotSize: 2.0,
          indicatorBgPadding: 2.0,
        )
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: Text("John's Shop"),
        actions: <Widget>[
          new IconButton( icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton( icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),

      drawer: new Drawer(
        child : new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(

              accountName: Text('joey'),
              accountEmail: Text('joey@gmail.com'),

              currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  )
              ),
              decoration: new BoxDecoration(
                color: Colors.green,
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color:Colors.green,),

              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Cart'),
                leading: Icon(Icons.shopping_basket,color:Colors.green,),

              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color:Colors.green, ),

              ),
            ),
            Divider(),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings, color:Colors.green,),

              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Help'),
                leading: Icon(Icons.help, color: Colors.blue,),


              ),
            ),
          ],
        ),
      ),
      body:  new ListView(
        children: <Widget>[
          image_carousel,

          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),),
 
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(15.0),
            child: new Text('Recent Products'),),

            //gridview 

            Container(
              height:  320,
              child: Products(),
              ),
          
        ],
      ),
    );

  }
}
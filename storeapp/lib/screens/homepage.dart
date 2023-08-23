import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/get_all_product.dart';
import 'package:storeapp/widgrt/customcard.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});
  static String id = 'homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'New Trend',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16,top: 65),

          child: FutureBuilder<List<Productmodel>>(
            future: Allproductservices().getallproduct(),
            builder: (context, snapshot) {
          
             if (snapshot.hasData) {
                  List<Productmodel>product=snapshot.data!;
  return GridView.builder(
   itemCount: product.length,
              clipBehavior: Clip.none,
   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
       childAspectRatio: 1.5,
       crossAxisSpacing: 10,
       mainAxisSpacing: 100),
   itemBuilder: (context, index) {
     return custom(product: product[index],);
   });
}
else{
  return Center(child: CircularProgressIndicator());
}
            },


          )
        ));
  }
}

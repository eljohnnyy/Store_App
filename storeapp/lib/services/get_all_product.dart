import 'dart:convert';

import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class Allproductservices{

Future<List<Productmodel>>getallproduct()async{


List<dynamic> data=await  Api().get(url: 'https://fakestoreapi.com/products');
List <Productmodel>productslist=[];
for(int i=0;i<data.length;i++){
  productslist.add(Productmodel.fromjson(data[i]),);
}

return productslist;}

}


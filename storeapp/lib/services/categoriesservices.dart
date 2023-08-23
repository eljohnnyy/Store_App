import 'dart:convert';

import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:http/http.dart' as http;
class categoriesservices{
Future<List<Productmodel>>getcategoriesproduct({required String categoryname})async{

List<dynamic> data=await  Api().get(url: 'https://fakestoreapi.com/products/category/$categoryname');

  List <Productmodel>productslist=[];
  for(int i=0;i<data.length;i++){
    productslist.add(Productmodel.fromjson(data[i]),);
  }
  
  return productslist;
}

}


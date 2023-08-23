import 'dart:convert';

import 'package:storeapp/models/product_model.dart';
import 'package:http/http.dart' as http;

import '../helper/api.dart';
class Allcategoriesservices{

  
Future<List<dynamic>>getallcategories()async{

List<dynamic> data=await  Api().get(url: 'https://fakestoreapi.com/products/categories');


  return data;
}

}


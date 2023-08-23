import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class  Addproduct{


   Future<Productmodel>addproduct({required String title,
   required String price,
   required String desc,
   required String image,
   required String categories,})async{
    

 Map<String,dynamic>data=await   Api().post(url: 'https://fakestoreapi.com/products', body: {
'title': title,
'price':price,
'description': desc,
'image': image,
'category': categories,



    });
    return Productmodel.fromjson(data);
   }
}
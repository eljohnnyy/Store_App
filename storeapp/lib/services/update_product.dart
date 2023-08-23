import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class  Updateproduct{


   Future<Productmodel>updateproduct({required String title,
   required int id,
   required String price,
   required String desc,
   required String image,
   required String categories,})async{
    

 Map<String,dynamic>data=await   Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
'title': title,
'price':price,
'description': desc,
'image': image,
'category': categories,



    });
    return Productmodel.fromjson(data);
   }
}
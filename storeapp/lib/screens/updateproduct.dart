import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/update_product.dart';
import 'package:storeapp/widgrt/buttom.dart';
import 'package:storeapp/widgrt/text_filed.dart';

class updateproduct extends StatefulWidget {
  updateproduct({super.key});
  static String id = 'update';

  @override
  State<updateproduct> createState() => _updateproductState();
}

class _updateproductState extends State<updateproduct> {
  String? name, desc, image;

  String? price;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    Productmodel productt =
        ModalRoute.of(context)!.settings.arguments as Productmodel;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                textfiled(
                  onChanged: (p0) {
                    name = p0;
                  },
                  hint: 'Product Name',
                  obsecure: false,
                ),
                SizedBox(
                  height: 20,
                ),
                textfiled(
                  onChanged: (p0) {
                    desc = p0;
                  },
                  hint: 'description',
                  obsecure: false,
                ),
                SizedBox(
                  height: 20,
                ),
                textfiled(
                  inputType: TextInputType.number,
                  onChanged: (p0) {
              price=p0;    
                  },
                  hint: 'price',
                  obsecure: false,
                ),
                SizedBox(
                  height: 20,
                ),
                textfiled(
                  onChanged: (p0) {
                    image = p0;
                  },
                  hint: 'image',
                  obsecure: false,
                ),
                SizedBox(height: 50),
                buttom(
                  text: 'Update',
                  onTap: () async{
                    isloading = true;
                    setState(() {});
                    try {
                     await updateproduct(productt);
                      show_snackbar(context, 'success');
                      Navigator.pop(context);
                    
                    } catch (ex) {
                      print(ex.toString());
                    }
                    isloading = false;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

 Future<void> updateproduct(Productmodel productt)async {
  await  Updateproduct().updateproduct(
    id: productt.id,
        title: name==null?productt.title:name!,
        price: price==null?productt.price.toString():price!,
        desc: desc==null?productt.description:desc!,
        image: image==null?productt.image:image!,
        categories: productt.cat);
  }
}

void show_snackbar(BuildContext context, String name) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(name),
    ),
  );
}

import 'package:edf/utils/app_dimension.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: AppDimension.height(3, context),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                      margin: EdgeInsets.symmetric(horizontal: AppDimension.width(15, context)),
                      padding: EdgeInsets.symmetric(horizontal: AppDimension.width(15, context)),
                      height: AppDimension.height(40, context),
                      decoration: BoxDecoration(
                        color: Color(0xFFEDECF2),
                        borderRadius: BorderRadius.circular(30),
                        
              
                      ),
              
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: AppDimension.width(5, context)),
                            height: AppDimension.height(50, context),
                            width: AppDimension.width(200, context),
                            child: TextFormField(
                              style: TextStyle(fontSize: AppDimension.height(15, context)),
                              decoration: InputDecoration(
                                 border: InputBorder.none,
                                 hintText: "Search here..."
                              ),
                            ),
                          ),
          
                         IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: AppDimension.height(25, context),
                      ), // Your icon at the end
                      onPressed: () {
                        // Handle the onPressed action here
                        print('Menu Icon Pressed');
                      },
                    ),
                        ],
                      ),
                    ),
              
              
              
              
              IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                        size: AppDimension.height(25, context),
                      ), // Your icon at the end
                      onPressed: () {
                        // Handle the onPressed action here
                        print('Menu Icon Pressed');
                      },
                    ),
              ],
            ),
          ),

          SizedBox(
            height: AppDimension.height(5, context),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
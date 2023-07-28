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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEDECF2),
                      borderRadius: BorderRadius.circular(30),
                      
    
                    ),
    
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 50,
                          width: 250,
                          child: TextFormField(
                            decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: "Search here..."
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: (){},
                          child: Icon(
                            Icons.search
                          ),
                        )
                      ],
                    ),
                  ),
    
    
    
    
    IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ), // Your icon at the end
                    onPressed: () {
                      // Handle the onPressed action here
                      print('Menu Icon Pressed');
                    },
                  ),
            ],
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
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/components.dart';


class CheckOutScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
    backgroundColor: Color(0xFFFFC14F),
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(160),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/fingerprint1.png',height: 100,width: 100,),
          Text('تسجيل الانصراف', style: TextStyle(color: Color(0xFF161D6F), fontSize: 30),),
          SizedBox(height: 10,)
        ],
      ),
    ),
    actions:[
      Icon(Icons.menu, color: Colors.white, size: 40,),
    ] ,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
    ),
      ),
      body:SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
           alignment: Alignment.topCenter,
            child: Column(
              
              children:[
                Image.asset('assets/images/fingerprint4.png',height: 120,),
                SizedBox(height: 50,),
                Text('برجاء ضع بصمتك لتاكيد الانصراف من الدوام',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,maxLines: 3,), 
                SizedBox(height: 15,), 
                Text('يرجي وضع البصمة الخاصة بالموظف وليس شخص اخر حتى نقوم بالتاكد من هوية المستخدم ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),maxLines: 3,), 
          
              ]
            ),
          ),
        ),
      ),
      bottomNavigationBar: BNB(),
    );
  }
}
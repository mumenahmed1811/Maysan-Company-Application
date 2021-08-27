import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/ebrahim/query/query_screen.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class RequestsResignationScreen extends StatefulWidget {
  

  @override
  _RequestsResignationScreenState createState() => _RequestsResignationScreenState();
}

class _RequestsResignationScreenState extends State<RequestsResignationScreen> {
   TextEditingController nameController = TextEditingController();

   TextEditingController residencynumberController = TextEditingController();

   TextEditingController requesttypeController = TextEditingController();

   TextEditingController requestreasonController = TextEditingController();
  int value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 65,
           title: Text('طلبات (الخروج- الاستقالة)',style: TextStyle(color:HexColor('#161D6F'),fontSize: 30,fontWeight: FontWeight.bold ),),
           backgroundColor: HexColor('#FFC14F'),
           centerTitle: true,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
           actions: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(Icons.menu, color: Colors.white, size: 40,),
              ),
           ],
         ),
      body: Center(
        child: SingleChildScrollView(
          
          child: Container(
           
            width: 350,
            height:600,
            decoration: BoxDecoration(
              color: HexColor('#FFC14F'),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                physics:BouncingScrollPhysics(),
                child: Column(
                  
                  children: [
                    Container(child: Text('التقدم لطلب ',style: TextStyle(color:HexColor('#161D6F'),fontSize:30,height: 1),)),
                    SizedBox(height: 15,),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Padding(
                        padding: EdgeInsets.only(top:10,bottom:3,),
                        child: Text('اسم الموظف',style: TextStyle(color:HexColor('#161D6F'),fontSize:15,height: 1),),
                      ),
                      TextFormField(
                        controller: nameController,
                         style: TextStyle(height:1),
                        keyboardType: TextInputType.name,
                        cursorColor: HexColor('#3949AB'),
                        obscureText: false,
                        enabled: true,
                        onTap: () {},
                        decoration: InputDecoration(
                          hintText: 'بيانات الموظف',
                          hoverColor: HexColor('#3949AB'),
                          hintStyle: TextStyle(color: HexColor('#3949AB'),height: 1),
                          fillColor: Colors.white,
                          filled: true,
                         
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                             ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                             ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10,bottom:3,),
                        child: Text('رقم الأقامة',style: TextStyle(color:HexColor('#161D6F'),fontSize:15,height: 1),),
                      ),
                      TextFormField(
                        controller: residencynumberController,
                        keyboardType: TextInputType.name,
                        cursorColor: HexColor('#3949AB'),
                        obscureText: false,
                         style: TextStyle(height:1),
                        enabled: true,
                        onTap: () {},
                        decoration: InputDecoration(
                          hintText: 'رقم الأقامة',
                          hoverColor: HexColor('#3949AB'),
                          hintStyle: TextStyle(color: HexColor('#3949AB'),height: 1),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                             ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                             ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10,bottom:3,),
                        child: Text('نوع الطلب',style: TextStyle(color:HexColor('#161D6F'),fontSize:15,height: 1),),
                      ),
                          Container(
                            width: 500,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                              ),
                              elevation: 8,
                              isDense: true,
                              isExpanded: true,
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child:
                                    Image.asset('assets/images/Path 11639.png'),
                              ),
                              value: value,
                              items: [
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text("سليكت لنوع الطلب",
                                        style: TextStyle(
                                            color: HexColor('#3949AB'),
                                            height: 1)),
                                  ),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      "سليكت لنوع الطلب",
                                      style: TextStyle(
                                          color: HexColor('#3949AB'),
                                          height: 1),
                                    ),
                                  ),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      "سليكت لنوع الطلب",
                                      style: TextStyle(
                                          color: HexColor('#3949AB'),
                                          height: 1),
                                    ),
                                  ),
                                  value: 3,
                                ),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      "سليكت لنوع الطلب",
                                      style: TextStyle(
                                          color: HexColor('#3949AB'),
                                          height: 1),
                                    ),
                                  ),
                                  value: 4,
                                )
                              ],
                              onChanged: (int? index) {
                                setState(() {
                                  value = index!;
                                });
                              },
                            ),
                          ),
                      Padding(
                        padding: EdgeInsets.only(top:10,bottom:3,),
                        child: Text('ســبــب الــطــلــب',style: TextStyle(color:HexColor('#161D6F'),fontSize:15,height: 1),),
                      ),
                      TextFormField(
                        controller: requestreasonController,
                        keyboardType: TextInputType.name,
                        cursorColor: HexColor('#3949AB'),
                        obscureText: false,
                        style: TextStyle(height:1),
                        enabled: true,
                        minLines: 6,
                        maxLines:6,
                        onTap: () {},
                        decoration: InputDecoration(
                          hintText: 'سبب الطلب',
                          
                          hoverColor: HexColor('#3949AB'),
                          hintStyle: TextStyle(color: HexColor('#3949AB'),height: 1),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                             ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                             ),
                        ),
                      ),
                      SizedBox(height:10),
                  Center(
                    child: Container(
                      height:75,
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(35),
                        child: MaterialButton(
                          minWidth: 200,
                          onPressed: () {
                            Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => QueryScreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/Icons - Arrow - Arrowhead - Right.png'),
                              Text(
                                'تأكيد الطلب',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          color: HexColor('#161D6F'),
                          height: 50,
                        ),
                      ),
                    ),
                  ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
           
          ),
        ),
      ),
      bottomNavigationBar: BNB(),
    );
  }
}
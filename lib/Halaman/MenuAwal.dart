import 'package:flutter/material.dart';
import 'package:tubes_apber/component_builder.dart';
import 'camera.dart';

class MenuAwal extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState()=> MenuAwalState();
 
}
class MenuAwalState extends State<MenuAwal>{
  BuildContext _context;
  ComponentBuilder _builder;
  // List<Widget> _listmenu = List<Widget>();
  // MenuAwalState(){
  //   _setMenu();
  // }
  void _scancam() => Navigator.of(_context).push(
    MaterialPageRoute(
      //builder: (_context) => CameraApp(),
    ),
  );

  // Widget _addMenu(Function function, String image, String title){
  //   return GestureDetector(
  //     onTap: function,
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       crossAxisAlignment: CrossAxisAlignment.stretch,
  //       children: <Widget>[
  //         Container(
  //           margin: EdgeInsets.only(bottom: 8.0),
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.circular(_builder.width *0.05),
  //             boxShadow: [
  //                BoxShadow(
  //                   color: Colors.black12,
  //                   blurRadius: 5.0,
  //                   offset: Offset(0.0, 15.0),
  //                   spreadRadius: -10.0,
  //                 )
  //               ]
  //             ),
  //           child: Image.asset(
  //             image,
  //             height: 33.0,
  //             fit: BoxFit.scaleDown,
  //           ),  
  //         ),
  //         Text(
  //           title,
  //         ),
  //       ],    
  //     ),
  //   );
  // }
  
  // void _setMenu(){
  //   List<Widget> _list = List<Widget>();
  //   _list.add(_addMenu(() =>_scancam(), "images/CamIcon.png", "Scan Food"));

  //   setState(() {
  //     _listmenu = _list;
  //   });
  // }
  
  @override
  Widget build(BuildContext context){
    _context = context;
    _builder = ComponentBuilder(_context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Indonesian National Food CBIR'),
      ),
      body: SingleChildScrollView(
       padding: EdgeInsets.all(_builder.width * 0.05),
       child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Menu Utama",
            textAlign: TextAlign.center,),
            Container(
              margin: EdgeInsets.all(_builder.width * 0.05),
              padding: EdgeInsets.all(_builder.width * 0.05),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(_builder.width *0.05),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200],
                    blurRadius: 3.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 2.0,
                  )
                ]
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Menu Utama",),
                  Container(
                    width: 33,
                    child: GestureDetector(
                      onTap: _scancam,
                      child: Container(
                        color: Colors.blue,
                        height: 50,
                        width: 100,
                        child:
                        Image.asset("images/CamIcon.png",
                        fit: BoxFit.scaleDown),
                      ),
                    ),
                  ),
                  // GridView(
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 4,
                  //     childAspectRatio: 1.0,
                  //   ),
                  //   shrinkWrap: true,
                  //   physics: NeverScrollableScrollPhysics(),
                  //   padding: EdgeInsets.only(
                  //     top: 20.0,
                  //     left: _builder.width * 0.025,
                  //     right: _builder.width * 0.025,
                  //   ),
                  //   children: _listmenu,
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
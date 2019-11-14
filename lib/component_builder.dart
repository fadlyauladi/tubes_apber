import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';


class ComponentBuilder {

  BuildContext _context;
  String _appName = "Indonesian Food CBIR";

  String _android = "android";
  String _androidVer = "1.2.2";

  String _iOS = "ios";
  String _iOSVer = "1.1.5";

//  Color _primaryColor = Colors.blue;
  Color _primaryColor = Color.fromARGB(255, 1, 29, 96);
  Color _secondaryGreen = Color.fromARGB(255, 16, 155, 170);
  Color _secondaryYellow = Color.fromARGB(255, 251, 183, 32);
  Color _secondaryRed = Color.fromARGB(255, 235, 17, 46);
  Color _whiteBackground = Color.fromARGB(255, 248, 247, 247);
  Color _greyBackground = Color.fromARGB(255, 243, 244, 249);
  Color _greyUnselected = Color.fromARGB(255, 195, 195, 195);
  Color _canvasColor = Colors.white;

  ComponentBuilder(this._context);

  double get height => MediaQuery.of(_context).size.height - MediaQuery.of(_context).padding.vertical;

  double get width => MediaQuery.of(_context).size.width - MediaQuery.of(_context).padding.horizontal;

  double get fontSmall => width * 0.035;

  double get fontMedium => width * 0.065;

  double get fontBig => width * 0.085;

  String get appName => this._appName;

  String get android => this._android;

  String get iOS => this._iOS;

  String get androidVer => this._androidVer;

  String get iOSVer => this._iOSVer;

  Color get primaryColor => this._primaryColor;

  Color get secondaryGreen => this._secondaryGreen;

  Color get secondaryYellow => this._secondaryYellow;

  Color get secondaryRed => this._secondaryRed;

  Color get whiteBackground => this._whiteBackground;

  Color get greyBackground => this._greyBackground;

  Color get greyUnselected => this._greyUnselected;

  Color get canvasColor => this._canvasColor;
  set canvasColor(Color value) => this._canvasColor = value;

  String parseDate(String time) {
    List<String> _string = time.split(" ");
    List<String> _date = _string[0].split("-");
    String _month = "";

    if (_date[1] == "01") _month = "Januari";
    else if (_date[1] == "02") _month = "Februari";
    else if (_date[1] == "03") _month = "Maret";
    else if (_date[1] == "04") _month = "April";
    else if (_date[1] == "05") _month = "Mei";
    else if (_date[1] == "06") _month = "Juni";
    else if (_date[1] == "07") _month = "Juli";
    else if (_date[1] == "08") _month = "Agustus";
    else if (_date[1] == "09") _month = "September";
    else if (_date[1] == "10") _month = "Oktober";
    else if (_date[1] == "11") _month = "November";
    else if (_date[1] == "12") _month = "Desember";

    List<String> _datetime = _string[1].split(":");

    return _date[0] +
        " " +
        _month +
        " " +
        _date[2] +
        " " +
        _datetime[0] +
        ":" +
        _datetime[1];
  }

  Widget billMenu(String image, String text) => Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      children: <Widget>[
        Image.asset(image, height: 55.0, width: 55.0, fit: BoxFit.cover),
        Container(
          margin: EdgeInsets.only(top: 3.0),
          child: Text(
            text, textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 9.0,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );

  // void toast(String msg) => Fluttertoast.showToast(
  //   msg: msg,
  //   toastLength: Toast.LENGTH_SHORT,
  //   gravity: ToastGravity.CENTER,
  //   timeInSecForIos: 2,
  //   backgroundColor: Colors.grey[700],
  //   textColor: Colors.white,
  // );

  void bottomDialog(String title, String msg) {
    showModalBottomSheet(
        context: _context,
        builder: (BuildContext context) {
          return ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: Container(
              color: Colors.white,
              height: ComponentBuilder(_context).height * 0.45,
              padding: EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                bottom: 15.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 30.0,
                    color: primaryColor,
                  ),
                  Container(
                    height: 10.0,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: fontMedium,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 8.0,
                  ),
                  Text(
                    msg,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSmall * 1.2,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Spacer(
                        flex: 1,
                      ),
                      FlatButton(
                        onPressed: () => Navigator.of(_context).pop(),
                        color: primaryColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: Text(
                          "Kembali",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 10.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
//    showDialog(
//      context: _context,
//      builder: (BuildContext context) {
//        return AlertDialog(
//          title: Text(title),
//          content: Text(msg),
//          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//          actions: <Widget>[
//            FlatButton(
//              child: Text("KEMBALI"),
//              onPressed: () {
//                Navigator.of(_context).pop();
//              },
//            ),
//          ],
//        );
//      },
//    );
  }

  void loadDialog(String msg) {
    showDialog(
      context: _context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: ListTile(
            leading: CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 3.0,
            ),
            title: Text(msg),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        );
      },
    );
  }

  void bottomSheet(String title, String content, String button1, String button2,
      Function function1, Function function2, int n) {
    showModalBottomSheet(
      context: _context,
      builder: (BuildContext context) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          child: Container(
            color: Colors.white,
            height: ComponentBuilder(_context).height * 0.45,
            padding: EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 15.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 30.0,
                  color: primaryColor,
                ),
                Container(
                  height: 10.0,
                ),
                Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: fontMedium,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 8.0,
                ),
                Text(
                  content,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSmall * 1.2,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 10.0,
                    ),
                    function1 == null
                        ? Container()
                        : FlatButton(
                            onPressed: function1,
                            color: primaryColor,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Text(
                              button1,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                    Spacer(
                      flex: 1,
                    ),
                    function2 == null
                        ? Container()
                        : FlatButton(
                            onPressed: function2,
                            color: primaryColor,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Text(
                              button2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                    Container(
                      width: 10.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ).then((value) {
      if (value.toString() != "out") {
        print("From sheet.");
        for (int i = 0; i < n-1; i++) {
          Navigator.of(_context).pop(true);
        }
      } else {
        print("From button.");
      }
    });
  }
}

class DashedLine extends StatelessWidget {
  final double height;
  final Color color;

  const DashedLine({this.height = 1, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.maxWidth;
        final dashWidth = 5.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

class CustomHalfCircleClipper extends CustomClipper<Path> {
  String orientation;

  CustomHalfCircleClipper({this.orientation});

  @override
  Path getClip(Size size) {
    final Path path = Path();

    if (orientation == "left")
      path.arcTo(Rect.fromLTRB(-size.width, 0.0, size.width, size.height), 0.0,
          size.width, false);
    else
      path.arcTo(Rect.fromLTRB(0.0, 0.0, size.width * 2, size.height), 0.0,
          size.width, false);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

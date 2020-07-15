import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
  }
}
 class LoginPage extends StatefulWidget {
   @override
   _LoginPageState createState() => _LoginPageState();
 }
 
 class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double>_iconAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _iconAnimationController= new AnimationController(
        vsync: this,
      duration: Duration(milliseconds: 300)

    );
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeOut);
    _iconAnimation.addListener(()=>this.setState((){}));
    _iconAnimationController.forward();
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       
       backgroundColor: Colors.black87,
       appBar: AppBar(title: Text('loGIN pAGE'),),

       body: Stack(
         fit: StackFit.expand,
         children: <Widget>[
         Image(
             image: AssetImage("assets/baby.jpg"),
           color: Colors.black87,
           colorBlendMode: BlendMode.darken,
         ),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               FlutterLogo(
                 size: _iconAnimation.value*100,
               ),
               Form(child: Theme(
                 data: ThemeData(
                   inputDecorationTheme: InputDecorationTheme(
                     labelStyle: TextStyle(
                       color: Colors.teal,
                       fontSize: 18,
                     )
                   ),
                   brightness: Brightness.dark,
                   primaryColor: Colors.teal,
                 ),
                 child: Container(
                   padding: EdgeInsets.all(30),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       TextField(

                         decoration: InputDecoration(

                           labelText: "enter email",

                         ),
                         keyboardType: TextInputType.emailAddress,

                       ),
                       TextField(

                         decoration: InputDecoration(

                           labelText: "enter password",

                         ),
                         keyboardType: TextInputType.text,
                         obscureText: true,

                       ),
                       Padding(padding: EdgeInsets.only(top: 20),),
                       MaterialButton(
                         height: 40,
                         minWidth: 100,
                         color: Colors.teal,
                         textColor: Colors.white,
                         splashColor: Colors.redAccent,
                         onPressed: (){},
                       child: Text("Login"),
                       )

                     ],
                   ),
                 ),
               ))
             ],
           )
         ],
       ),
     );
   }
 }
 
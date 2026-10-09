import 'package:flutter/material.dart';

class AnaUygulama  extends StatefulWidget {

  @override
  State<AnaUygulama> createState() => _AnaUygulamaState();
}

class _AnaUygulamaState extends State<AnaUygulama> {
  double _sonuc=0.0;

  TextEditingController _controller =TextEditingController();
  TextEditingController _controller2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("Vucud Kitle Endeksi"),backgroundColor: Colors.greenAccent,),
      body: Center(
          child: Column(
            children: [
                    SizedBox(height: 30),
                    Text(_sonuc.toStringAsFixed(2),style: TextStyle(fontSize: 30),),
                    SizedBox(height: 30),

                    // TEXTFİELD BOY

                    TextField(
                    controller: _controller,
                    keyboardType:TextInputType.phone,

                    decoration: InputDecoration(

                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        labelText: "Boy",
                        suffix:Text("M"),

                    ),

                   ),

                     SizedBox(height: 30),

              // TEXTFİELD KİLO

             TextField(

                controller: _controller2,
                keyboardType:TextInputType.phone,

                decoration: InputDecoration(

                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  labelText: "Kilo",
                  suffix:Text("kg"),

                ),

              ),
                  SizedBox(height:30),

              ElevatedButton(

                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amberAccent),
                    child: Text("Hesapla",style: TextStyle(fontSize: 18),),
                    onPressed:fnc,
              )
            ],
          ),

      ),
    );
  }

  void fnc(){

    String textBoy=_controller.text.trim();
    String textKilo=_controller2.text.trim();

    try{

      double boy =double.parse(textBoy);
      double kilo=double.parse(textKilo);

      setState(() {

        _sonuc=kilo/(boy*boy);
      });

    }catch(e){

      print("Hatanız : "+e.toString());
    }

  }
}

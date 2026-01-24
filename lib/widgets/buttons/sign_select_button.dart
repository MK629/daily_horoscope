import 'package:daily_horoscope/contexts/sign_context.dart';
import 'package:daily_horoscope/types/signs.dart';
import 'package:daily_horoscope/widgets/common_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignSelectButton extends StatelessWidget {
  const SignSelectButton({ super.key });

  @override
  Widget build(BuildContext context){
    SignContext currentSign = context.read<SignContext>();

    List<Sign> signs = Sign.values;
    // signs.sort((a, b) => a.name.compareTo(b.name));
    
    return ElevatedButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
            side: BorderSide(
              color: Colors.amberAccent,
              width: 2
            )
          )
        ),
        backgroundColor: WidgetStatePropertyAll(commonTextBgColour())
      ),
      onPressed: () => showModalBottomSheet(
        context: context, 
        builder: (context) => ListView(
          children: signs.map((s) => ListTile(
            title: Text(s.name), 
            onTap: (){
              currentSign.changeSign(s);
              Navigator.pop(context);
            })).toList(),
        ),), 
      child: Text(currentSign.getSign.name, style: TextStyle(color: Colors.amberAccent),)
    );
  }
}
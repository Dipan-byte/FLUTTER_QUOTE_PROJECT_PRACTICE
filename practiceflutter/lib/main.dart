import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList() ,
  ));
}
class QuoteList extends StatefulWidget {
      @override
      _QuoteListState createState() => _QuoteListState() ;

}
class _QuoteListState extends State<QuoteList>{
  List<String> quotes =[ 
    'All the worlds a stageAnd all the men and women merely players.' ,
    'To be, or not to be: that is the question.' ,
    'Some are born great, some achieve greatness,and some have greatness thrust upon them.'
  ] ;
     @override
     Widget build(BuildContext Context){
        return Scaffold(
            backgroundColor: Colors.grey[500],
            appBar: AppBar(
              title: Text(
                'Awesome Quote' ,
                style: TextStyle(
                  color: Colors.white70 ,
                ),
              ),
              backgroundColor: Colors.grey[800],
              centerTitle: true,
            ),
            body: Column(
              children : quotes.map((quote) {
                  return Text(quote) ;
              }).toList()
            ),
        );
     } 
}

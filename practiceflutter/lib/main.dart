import 'package:flutter/material.dart';
import 'quote.dart' ;
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
  List<Quote> quotes =[ 
    Quote(author: 'lawra' , text: 'All the worlds a stageAnd all the men and women merely players.'),
    Quote(author: 'magi' , text: 'To be, or not to be: that is the question.') ,
    Quote(text: 'Some are born great, some achieve greatness,and some have greatness thrust upon them.', author: 'bitch')
    
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
                  return Text('${quote.text} - ${quote.author}') ;
              }).toList()
            ),
        );
     } 
}

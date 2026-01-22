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
  Widget QuoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0 , 16.0 , 0.0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.text ,
            style: TextStyle(
              fontSize: 20.0 ,
              color: Colors.grey[900]
            ),
          ),
          SizedBox(height: 6.0),
          Text(
            quote.author ,
            style: TextStyle(
              fontSize: 20.0 ,
              color: Colors.grey[900]
            ),
          )
        ],
      ),
      )
    );
  }
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
                  // return Text('${quote.text} - ${quote.author}') ; 
                  return QuoteTemplate(quote) ;
              }).toList()
            ),
        );
     } 
}

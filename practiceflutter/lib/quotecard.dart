import 'package:flutter/material.dart';
import 'quote.dart' ;

class QuoteCard extends StatelessWidget {
  final Quote quote ;
  final VoidCallback delete ;
  const QuoteCard({ required this.quote , required this.delete});

  @override
  Widget build(BuildContext context) {
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
          ),
          SizedBox(height: 6.0),
          ElevatedButton.icon(
            onPressed: delete ,
            label: Text('Delete quote'),
            icon: Icon(Icons.delete),
          )
        ],
      ),
      )
    );;
  }
}

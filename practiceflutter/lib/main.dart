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
        );
     } 
}

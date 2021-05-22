import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic bid = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Selecionar Produtos'),
        actions: [
          Icon(Icons.question_answer),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 7.0,
                            color: Colors.grey[200],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.blue),
                    ),
                    Text('Comprar'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[300],
                        ),
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3.0,
                          color: Colors.grey[300],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Text('Pagamento'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[300],
                        ),
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3.0, color: Colors.grey[300]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Text('Confirmação'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

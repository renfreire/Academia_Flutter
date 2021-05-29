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
            padding: EdgeInsets.all(12),
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
          Container(
            margin: EdgeInsets.only(top: 3),
            padding: EdgeInsets.all(12),
            color: Colors.white,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '${bid["nome"]} - Botijão de 13Kg',
                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'R\$ ',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '${bid["preco"].toStringAsFixed(2)}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.fromLTRB(12, 15, 12, 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.home,
                          size: 50,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              children: [
                                Text(
                                  '${bid["nome"]}             ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                // color: Colors.red,
                                // padding: EdgeInsets.only(right: 30),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                '${bid['nota']}',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow[600],
                                                size: 20,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '${bid['tempoMedio']}',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              'min',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              '${bid["tipo"]}',
                              style: TextStyle(
                                fontSize: 18,
                                backgroundColor: Colors.black,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Divider(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Botijao de 13Kg'),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('${bid["tipo"]}'),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "R\$ ",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              '${bid["preco"].toStringAsFixed(2)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Stack(
                              alignment: const Alignment(0.0, 0),
                              children: [
                                CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.grey[500],
                                ),
                                Text(
                                  '-',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 50,
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: const Alignment(0, 0.22),
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  child:
                                      Image.asset('assets/image/icongas.png'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.amber,
                                  ),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: const Alignment(0, 0),
                              children: [
                                CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.grey[500],
                                ),
                                Text(
                                  '+',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 27,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 200,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.blue,
              gradient: LinearGradient(colors: [
                Colors.blue[200],
                Colors.blue,
              ]),
            ),
            child: Text(
              'IR PARA O PAGAMENTO',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

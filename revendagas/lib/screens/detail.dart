import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic bid = ModalRoute.of(context).settings.arguments;

    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(1440, 2560),
        orientation: Orientation.portrait);

    print(ScreenUtil().screenHeight);
    print(ScreenUtil().screenWidth);

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
                      width: ScreenUtil().screenWidth * 0.09,
                      height: ScreenUtil().screenWidth * 0.09,
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
                      width: ScreenUtil().screenWidth * 0.2,
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
                      width: ScreenUtil().screenWidth * 0.08,
                      height: ScreenUtil().screenWidth * 0.08,
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
                      width: ScreenUtil().screenWidth * 0.2,
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
                      width: ScreenUtil().screenWidth * 0.08,
                      height: ScreenUtil().screenWidth * 0.08,
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
                        style: TextStyle(
                          fontSize: ScreenUtil().screenWidth * 0.034,
                        ),
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
                              fontSize: ScreenUtil().screenWidth * 0.032,
                            ),
                          ),
                          Text(
                            '${bid["preco"].toStringAsFixed(2)}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().screenWidth * 0.05,
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
                          size: ScreenUtil().screenWidth * 0.12,
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
                                    fontSize: ScreenUtil().screenWidth * 0.038,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                child: Row(
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
                                                  fontSize:
                                                      ScreenUtil().screenWidth *
                                                          0.035,
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
                                                fontSize:
                                                    ScreenUtil().screenWidth *
                                                        0.035,
                                              ),
                                            ),
                                            Text(
                                              'min',
                                              style: TextStyle(
                                                fontSize:
                                                    ScreenUtil().screenWidth *
                                                        0.026,
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
                                fontSize: ScreenUtil().screenWidth * 0.045,
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
                              style: TextStyle(
                                fontSize: ScreenUtil().screenWidth * 0.030,
                              ),
                            ),
                            Text(
                              '${bid["preco"].toStringAsFixed(2)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().screenWidth * 0.045,
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
                                    fontSize: ScreenUtil().screenWidth * 0.1,
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: const Alignment(0, 0.22),
                              children: [
                                Container(
                                  width: ScreenUtil().screenWidth * 0.2,
                                  height: ScreenUtil().screenHeight * 0.13,
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
                                      fontSize:
                                          ScreenUtil().screenWidth * 0.055,
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
                                    fontSize: ScreenUtil().screenWidth * 0.06,
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
            width: ScreenUtil().screenWidth * 0.5,
            height: ScreenUtil().screenHeight * 0.09,
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

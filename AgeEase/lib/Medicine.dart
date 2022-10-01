///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';


class med extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffebebeb),
      appBar:
      AppBar(
        elevation:4,
        centerTitle:false,
        automaticallyImplyLeading: false,
        backgroundColor:Color(0xffffffff),
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.zero,
        ),
        title:Text(
          "medicine",
          style:TextStyle(
            fontWeight:FontWeight.w700,
            fontStyle:FontStyle.normal,
            fontSize:18,
            color:Color(0xff000000),
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          color:Color(0xff212435),
          size:24,
        ),
      ),
      body:
      Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisSize:MainAxisSize.max,
        children: [

          Expanded(
            flex: 1,
            child:
            ListView(
              scrollDirection: Axis.vertical,
              padding:EdgeInsets.all(8),
              shrinkWrap:true,
              physics:ClampingScrollPhysics(),
              children:[


                Card(
                  margin:EdgeInsets.all(0),
                  color:Color(0xffffffff),
                  shadowColor:Color(0xff000000),
                  elevation:1,
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(12.0),
                  ),
                  child:
                  Row(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisSize:MainAxisSize.min,
                    children:[

                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding:EdgeInsets.all(8),
                          child:
                          Column(
                            mainAxisAlignment:MainAxisAlignment.start,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisSize:MainAxisSize.max,
                            children: [
                              Text(
                                "Tab. Cilacar",
                                textAlign: TextAlign.start,
                                maxLines:1,
                                overflow:TextOverflow.clip,
                                style:TextStyle(
                                  fontWeight:FontWeight.w700,
                                  fontStyle:FontStyle.normal,
                                  fontSize:16,
                                  color:Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding:EdgeInsets.fromLTRB(0, 4, 0, 0),
                                child:Text(
                                  "1-0-1",
                                  textAlign: TextAlign.start,
                                  maxLines:2,
                                  overflow:TextOverflow.clip,
                                  style:TextStyle(
                                    fontWeight:FontWeight.w700,
                                    fontStyle:FontStyle.normal,
                                    fontSize:18,
                                    color:Color(0xff000000),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child:Text(
                                  "after food",
                                  textAlign: TextAlign.start,
                                  maxLines:2,
                                  overflow:TextOverflow.clip,
                                  style:TextStyle(
                                    fontWeight:FontWeight.w400,
                                    fontStyle:FontStyle.normal,
                                    fontSize:13,
                                    color:Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],),),),
                    ],),
                ),

                Card(
                  margin:EdgeInsets.symmetric(vertical: 8,horizontal:0),
                  color:Color(0xffffffff),
                  shadowColor:Color(0xff000000),
                  elevation:1,
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(12.0),
                  ),
                  child:
                  Row(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisSize:MainAxisSize.max,
                    children:[

                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding:EdgeInsets.all(8),
                          child:
                          Column(
                            mainAxisAlignment:MainAxisAlignment.start,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisSize:MainAxisSize.max,
                            children: [
                              Text(
                                "Tab. Ketoalfa DS",
                                textAlign: TextAlign.start,
                                maxLines:1,
                                overflow:TextOverflow.clip,
                                style:TextStyle(
                                  fontWeight:FontWeight.w700,
                                  fontStyle:FontStyle.normal,
                                  fontSize:16,
                                  color:Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding:EdgeInsets.fromLTRB(0, 4, 0, 0),
                                child:Text(
                                  "1-0-1",
                                  textAlign: TextAlign.start,
                                  maxLines:2,
                                  overflow:TextOverflow.clip,
                                  style:TextStyle(
                                    fontWeight:FontWeight.w700,
                                    fontStyle:FontStyle.normal,
                                    fontSize:18,
                                    color:Color(0xff000000),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child:Text(
                                  "before food",
                                  textAlign: TextAlign.start,
                                  overflow:TextOverflow.clip,
                                  style:TextStyle(
                                    fontWeight:FontWeight.w400,
                                    fontStyle:FontStyle.normal,
                                    fontSize:13,
                                    color:Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],),),),
                    ],),
                ),

                Card(
                  margin:EdgeInsets.fromLTRB(0, 0, 0, 8),
                  color:Color(0xffffffff),
                  shadowColor:Color(0xff000000),
                  elevation:1,
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(12.0),
                  ),
                  child:
                  Row(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisSize:MainAxisSize.max,
                    children:[

                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding:EdgeInsets.all(8),
                          child:
                          Column(
                            mainAxisAlignment:MainAxisAlignment.start,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisSize:MainAxisSize.max,
                            children: [
                              Text(
                                "Tab. Roliflo OD",
                                textAlign: TextAlign.start,
                                maxLines:1,
                                overflow:TextOverflow.ellipsis,
                                style:TextStyle(
                                  fontWeight:FontWeight.w700,
                                  fontStyle:FontStyle.normal,
                                  fontSize:16,
                                  color:Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding:EdgeInsets.fromLTRB(0, 4, 0, 0),
                                child:Text(
                                  "0-0-1",
                                  textAlign: TextAlign.start,
                                  maxLines:2,
                                  overflow:TextOverflow.clip,
                                  style:TextStyle(
                                    fontWeight:FontWeight.w700,
                                    fontStyle:FontStyle.normal,
                                    fontSize:18,
                                    color:Color(0xff000000),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child:Text(
                                  "",
                                  textAlign: TextAlign.start,
                                  overflow:TextOverflow.clip,
                                  style:TextStyle(
                                    fontWeight:FontWeight.w400,
                                    fontStyle:FontStyle.normal,
                                    fontSize:11,
                                    color:Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                "After food",
                                textAlign: TextAlign.start,
                                overflow:TextOverflow.clip,
                                style:TextStyle(
                                  fontWeight:FontWeight.w400,
                                  fontStyle:FontStyle.normal,
                                  fontSize:14,
                                  color:Color(0xff000000),
                                ),
                              ),
                            ],),),),
                    ],),
                ),

                Card(
                  margin:EdgeInsets.fromLTRB(0, 0, 0, 8),
                  color:Color(0xffffffff),
                  shadowColor:Color(0xff000000),
                  elevation:1,
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(12.0),
                  ),
                  child:

                  Column(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.center,
                    mainAxisSize:MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment:CrossAxisAlignment.start,
                        mainAxisSize:MainAxisSize.max,
                        children:[

                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding:EdgeInsets.all(8),
                              child:
                              Column(
                                mainAxisAlignment:MainAxisAlignment.start,
                                crossAxisAlignment:CrossAxisAlignment.start,
                                mainAxisSize:MainAxisSize.max,
                                children: [
                                  Text(
                                    "Tab. nodosis GST",
                                    textAlign: TextAlign.start,
                                    maxLines:1,
                                    overflow:TextOverflow.ellipsis,
                                    style:TextStyle(
                                      fontWeight:FontWeight.w700,
                                      fontStyle:FontStyle.normal,
                                      fontSize:16,
                                      color:Color(0xff000000),
                                    ),
                                  ),
                                  Padding(
                                    padding:EdgeInsets.fromLTRB(0, 4, 0, 0),
                                    child:Text(
                                      "0-1-0",
                                      textAlign: TextAlign.start,
                                      maxLines:2,
                                      overflow:TextOverflow.clip,
                                      style:TextStyle(
                                        fontWeight:FontWeight.w700,
                                        fontStyle:FontStyle.normal,
                                        fontSize:18,
                                        color:Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],),),),
                        ],),
                      Align(
                        alignment:Alignment(-0.9, 0.0),
                        child:Text(
                          "after food",
                          textAlign: TextAlign.start,
                          overflow:TextOverflow.clip,
                          style:TextStyle(
                            fontWeight:FontWeight.w400,
                            fontStyle:FontStyle.normal,
                            fontSize:14,
                            color:Color(0xff000000),
                          ),
                        ),
                      ),
                    ],),
                ),
              ],),),
        ],),
    )
    ;}
}
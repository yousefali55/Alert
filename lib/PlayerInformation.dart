import 'dart:math';

import 'package:alert/Data/Cubit/cubit/player_info_box_cubit.dart';
import 'package:alert/reusable/TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerInformation extends StatelessWidget {
  const PlayerInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Alert Dialog',
      home: Scaffold(
        body: Column(
          children: [
          Center(
            child: ElevatedButton(
              child: Text('Press it'),
              onPressed: () async{
                context.read<GetInfoCubit>().getinfo();
              },
            ),
          ),
          BlocBuilder<GetInfoCubit,GetInfoState>(
            builder: (context, state){
              if(state is GetInfoInitial){
                return Center(
                  child: Text("Please press"),
                );
              }
              if(state is GetInfoLoading){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if(state is GetInfoSuccess){
                return Center(
                  child:ElevatedButton(
                    child: Text("Presss"),
                    onPressed: ,),
                  child: AlertDialog(
                      content: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(state.response.result![0].playerAge.toString()),
                                     // i wanna show the name of player here
                                    SizedBox(
                                      height: MediaQuery.of(context).size.height *
                                          0.1,
                                    ),
                                    Text('Play Maker'), // i wanna show the position of player here
                                    Text('10') 
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 1 / 7,
                                ),
                                Image.network(
                                  "https://www.reuters.com/resizer/0zY6IwPFGY1YOyxNTijo-6mgrF4=/1200x1500/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/UUC247IX6JPCHPOOTWP6X4I2TA.jpg",
                                  height:
                                      MediaQuery.of(context).size.height * 1 / 2,
                                  width:
                                      MediaQuery.of(context).size.width * 1 / 4,
                                )
                              ],
                            ),
                            ListView(
                              shrinkWrap: true,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Nationality",
                                    style: TextStylee.TextInformation,),
                                    Text("Spain",
                                    style: TextStylee.TextInformation,),
                                  ],
                                ),
                                const Divider(
                                  height: 1,
                                  color: Colors.black,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("",
                                    style: TextStylee.TextInformation,),
                                    Text('20',
                                    style: TextStylee.TextInformation,),
                                  ],
                                ),
                                Divider(
                                  height: 1,
                                  color: Colors.black,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Club",
                                    style: TextStylee.TextInformation,),
                                    Text("Psg",
                                    style: TextStylee.TextInformation),
                                  ],
                                ),
                                Divider(
                                  height: 1,
                                  color: Colors.black,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Position",
                                    style: TextStylee.TextInformation,),
                                    Text("Play maker",
                                    style: TextStylee.TextInformation,),
                                  ],
                                ),
                                Divider(
                                  height: 1,
                                  color: Colors.black,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Assist",
                                    style: TextStylee.TextInformation,),
                                    Text("15",
                                    style: TextStylee.TextInformation,),
                                  ],
                                ),
                                Divider(
                                  height: 1,
                                  color: Colors.black,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Goals",
                                    style: TextStylee.TextInformation,),
                                    Text("30",
                                    style: TextStylee.TextInformation,),
                                  ],
                                ),
                                Divider(
                                  height: 1,
                                  color: Colors.black,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Yellow card",
                                    style: TextStylee.TextInformation,),
                                    Text("0",
                                    style: TextStylee.TextInformation,),
                                  ],
                                ),
                                Divider(
                                  height: 1,
                                  color: Colors.black,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Red card",
                                    style: TextStylee.TextInformation,),
                                    Text("0",
                                    style: TextStylee.TextInformation,),
                                  ],
                                ), 
                                Divider(
                                  height: 1,
                                  color: Colors.black,
                                ),                            
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                );
              }
              else{
                return Text("elyoo");
              }
            }
      ),
          ],
      ),
      ),
    );
  }
}

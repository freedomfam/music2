import 'package:flutter/material.dart';
import 'AudioPlayer.dart';
import 'AudioPlayerController.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  Homepage([Key key, this.title]):
  super(key: key);
  final String title;
  @override
 _Homepage createState() => _Homepage();
  
}

class _Homepage extends State<Homepage> {
  @override
  void initSate(){
    super.initState();
  }

  double _tela;

  Widget build(BuildContext context) {
    _tela = MediaQuery.of(context).size.width;
    return Scaffold(appBar: AppBar(title: 
    Text("Music"),
    ),
    body: Container(
      child: _player(),
    ),
    );
  }
  Widget _tap(List<Widget> children){
    return Container(child: Column(
      children: children.map((c) => Container(
        child: c,
        padding: EdgeInsets.all(6),
      )).toList(),
    ),);
  }
  Widget _player(){
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        StreamBuilder(
          stream: audioC.outPlayer,
          builder: (context, AsyncSnapshot<AudioPlayerObj> snapshot){
            return _tap([
              Text("aksdop"),
        // Text(snapshot.data.musicaAtual),
        
        _slider(),
        Row(mainAxisAlignment: 
        MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("00:00"),
          // Text(snapshot.data.duration.inMinutes.toString()+ ":" + (snapshot.data.duration.inSeconds - (snapshot.data.duration.inMinutes * 60 )).toString()),
        ],),Text("Tempo da"),
        _retornarTempoMusica(),
        _acoes(snapshot.data),

      ]

      );
          }
        )
      ])
    );
  }
  double temp = 0;

  Widget _slider(){
    return Slider(
      value: temp ,
      max: 150,
      min: 0, 
      onChanged: (newVal){
        setState(() {
          print(newVal);
          temp = newVal;
        });
      },
    );
  }
  Widget _retornarTempoMusica(){
    String tempoMusica = "00:00";
    return Text(tempoMusica);
  }

  Widget _acoes(AudioPlayerObj objto){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      IconButton(iconSize: _tela*.1,
        icon: Icon(Icons.skip_previous),
      onPressed: (){



      },),
      IconButton(iconSize: _tela*.2,
      icon: Icon(objto.play == true
      ? Icons.pause_circle_filled
      : Icons.play_circle_filled),
      onPressed: (){
        audioC.botaoPlayPause();

      },),
       IconButton(iconSize: _tela*.1,
        icon: Icon(Icons.skip_next),
      onPressed: (){



      },),
    ],);
  }
}


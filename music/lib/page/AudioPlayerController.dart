

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:rxdart/rxdart.dart';

import 'AudioPlayer.dart';

class AudioPlayerController extends BlocBase{

  BehaviorSubject<AudioPlayerObj> durB = new BehaviorSubject<AudioPlayerObj>();

  Stream<AudioPlayerObj> get outPlayer => durB.stream;
  Sink<AudioPlayerObj> get inPlayer => durB.sink;

  AudioPlayer advancedPlayer = new AudioPlayer();
  
  AudioPlayerObj audioObj;

  AudioPlayerController(){
    audioObj = new AudioPlayerObj(advancedPlayer,
    new AudioCache(fixedPlayer: advancedPlayer),'',0,
    new Duration(), new Duration(),
    '',false,'');

    audioObj.advancedPlayer.onDurationChanged.listen((Duration d){
      audioObj.duration = d;
      inPlayer.add(audioObj);
    });

    audioObj.advancedPlayer.onAudioPositionChanged.listen((Duration p){
      audioObj.position = p;
      inPlayer.add(audioObj);
    });

    audioObj.musicaAtual = "มะล่องก่องแก่ง.mp3";
    inPlayer.add(audioObj);
  }

  botaoPlayPause(){
    if (audioObj.play) {
      audioObj.play = false;
      audioObj.advancedPlayer.pause();
    } else {
      audioObj.play = true;

      audioObj.audioCache.play(audioObj.musicaAtual);
    }
    inPlayer.add(audioObj);
  }
  trocarMusic(String music) {
    audioObj.musicaAtual = music;
    print(music);

    audioObj.audioCache.play(audioObj.musicaAtual);
    audioObj.play = true;
    inPlayer.add(audioObj);
  }



  @override
  void dispose() {
    // TODO: implement dispose
  }

}

AudioPlayerController audioC = new AudioPlayerController();
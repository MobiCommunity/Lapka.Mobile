import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';

class BasicTexts{

  static Text body(String data){
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: BasicColors.darkGrey
      ),
    );
  }
  
  static Text bodyBold(String data){
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: BasicColors.darkGrey
      ),
    );
  }
  
  static Text bodyLight(String data){
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: BasicColors.darkGrey
      ),
    );
  }

  static Text headline(String data){
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: BasicColors.darkGrey
      ),
    );
  } 
  
  static Text subtitle(String data){
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: BasicColors.darkGrey
      ),
    );
  } 
  
  static Text buttonWhiteBold(String data){
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: BasicColors.white
      ),
    );
  }  
  
  static Text buttonWhite(String data){
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: BasicColors.white
      ),
    );
  }  

  static Text caption(String data){
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: BasicColors.lightGrey
      ),
    );
  } 

  static Text captionWhite(String data){
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: BasicColors.white
      ),
    );
  } 

  static Text subtitleBigBold(String data){
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: BasicColors.darkGrey
      ),
    );
  }   
  static Text subtitleBigWhite(String data){
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18,
        color: BasicColors.white
      ),
    );
  }

  static Text overlineWhite(String data){
    return Text(
      data,
      style: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 10,
        color: BasicColors.white
      ),
    );
  }

}
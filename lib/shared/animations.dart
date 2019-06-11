import 'package:flutter/material.dart';

class RoomDetailsEnterAnimations {
  final AnimationController controller;
  final Animation<double> backButton;
  final Animation<double> deviceTranslation;
  final Animation<double> playerTranslation;
  final Animation<double> deviceControllerTranslation;
  final Animation<double> airControllerTranslation;

  RoomDetailsEnterAnimations(this.controller)
      : backButton = new Tween(begin: -200.0, end: 0.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.100,
              0.300,
              curve: Curves.linear,
            ),
          ),
        ),
        deviceTranslation = new Tween(begin: 800.0, end: 0.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.500,
              0.700,
              curve: Curves.linear,
            ),
          ),
        ),
        playerTranslation = new Tween(begin: 800.0, end: 0.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.600,
              0.800,
              curve: Curves.linear,
            ),
          ),
        ),
        deviceControllerTranslation = new Tween(begin: 800.0, end: 0.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.650,
              0.900,
              curve: Curves.linear,
            ),
          ),
        ),
        airControllerTranslation = new Tween(begin: -1000.0, end: 0.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.650,
              0.900,
              curve: Curves.linear,
            ),
          ),
        );
}

# [Flutter Material Dialogs](https://pub.dev/packages/material_dialogs)

[![pub](https://img.shields.io/pub/v/material_dialogs.svg)](https://pub.dev/packages/material_dialogs/install)


# Flutter Material Dialogs  📱

A Flutter library aims to help you create 💪🏻*animated*, 😃 *simple*, 😎 *stylish* Material Dialogs in your app.

<table style="width:100%">
  <tr>
    <th><b>1. Material Dialog</b></th>
    <th><b>2. Animations Material Dialog</b></th> 
    <th><b>3. Bottom Material Dialog</b></th>
    <th><b>4. Animations Bottom Dialog</b></th>
  </tr>
  <tr>
    <td><img src="https://github.com/Ezaldeen99/material_dialogs/raw/master/gifs/normal.gif"/></td>
    <td><img src="https://github.com/Ezaldeen99/material_dialogs/raw/master/gifs/normal_animated.gif"/></td> 
    <td><img src="https://github.com/Ezaldeen99/material_dialogs/raw/master/gifs/bottom.gif"/></td>
    <td><img src="https://github.com/Ezaldeen99/material_dialogs/raw/master/gifs/bottom_animated.gif"/></td>
  </tr>
</table>


# Table of Contents:
> - [ Introduction ](#introduction)
> - [ Types of Dialog ](#types)
> - [ Implementation ](#implementation)
>    - [ Create Dialog Instance ](#createDialogInstance)
>        - [ Material Dialog ](#createMaterialDialog)
>        - [ Bottom Sheet Material Dialog ](#createBsMaterialDialog)
>    - [ Show Animations ](#showAnims)
>    - [Icon Buttons](#icons_buttons)
> - [ Contribute ](#contribute)    
> - [ Credits ](#credits)    

<a name="introduction"></a>
## Introduction
**MaterialDialog** This Plugin will be useful to create simple, animated, and beautiful dialogs in your next Flutter app. 
This library implements Airbnb's [*Lottie*](https://lottiefiles.com/) library to render After Effects animation in app.

<a name="types"></a>
## Types of Dialog
**MaterialDialog** library provides two types of dialog i.e. 

<table style="width:100%">
  <tr>
    <th><b>1. Material Dialog</b></th>
    <th><b>2. Bottom Sheet Material Dialog</b></th>
  </tr>
  <tr>
    <td>A normal material dialog which can have one or two buttons.</td>
    <td>A Bottom Sheet material dialog which can have one or two buttons, is showed from bottom of device.</td> 
  </tr>
  <tr>
    <td align="center"><img src="https://github.com/Ezaldeen99/material_dialogs/raw/master/gifs/Screenshot_20201204_173336.png" width="75%"/></td>
    <td align="center"><img src="https://github.com/Ezaldeen99/material_dialogs/raw/master/gifs/Screenshot_20201204_173347.png" width="75%"/></td> 
  </tr>
</table>

<a name="implementation"></a>
## Implementation
Implementation of Material Dialog library is so easy. You can check [/example](/example) directory for demo. Let's have look talk in details about it.

<a name="install"></a>
### install
#### i. pubspec
In `pubspec.yaml`

```yaml
dependencies:
  material_dialogs: _latest_version

```
Now in your Dart code, you can use:

```dart
import 'package:material_dialogs/material_dialogs.dart';
```

Details see [pub.dev](https://pub.dev/packages/material_dialogs/install).



<a name="createDialog"></a>
### Create Dialog
As there are two types of dialogs in library. Material Dialogs are instantiated as follows.
<a name="createMaterialDialog"></a>
#### i. Material Dialog
`Dialogs` class will be used to create your dialog, below is an example to show your dialog in the app.

```dart
Dialogs.materialDialog(
          msg: 'Are you sure ? you can\'t undo this',
          title: "Delete",
          color: Colors.white,
          context: context,
          actions: [
            IconsOutlineButton(
              onPressed: () {},
              text: 'Cancel',
              iconData: Icons.cancel_outlined,
              textStyle: TextStyle(color: Colors.grey),
              iconColor: Colors.grey,
            ),
            IconsButton(
              onPressed: () {},
              text: 'Delete',
              iconData: Icons.delete,
              color: Colors.red,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
            ),
          ])
```
 
<img align="center" src="https://github.com/Ezaldeen99/material_dialogs/raw/master/gifs/normal.gif" width="300"/>

`IconsOutlineButton` and `IconsButton` are both buttons widgets provided by the plugin to make things easier for you [read more](#icons_buttons), you can use any other buttons if you want.

<a name="createBsMaterialDialog"></a>
#### ii. Bottom Sheet Material Dialog
`Dialogs` class will be used to create your dialog, use `bottomMaterialDialog`. Below is an example to show your dialog in the app.
```dart
Dialogs.bottomMaterialDialog(
          msg: 'Are you sure? you can\'t undo this action',
          title: 'Delete',
          context: context,
          actions: [
            IconsOutlineButton(
              onPressed: () {},
              text: 'Cancel',
              iconData: Icons.cancel_outlined,
              textStyle: TextStyle(color: Colors.grey),
              iconColor: Colors.grey,
            ),
            IconsButton(
              onPressed: () {},
              text: 'Delete',
              iconData: Icons.delete,
              color: Colors.red,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
            ),
          ]),
```

<img align="center" src="https://github.com/Ezaldeen99/material_dialogs/raw/master/gifs/bottom.gif" width="300"/>

<a name="showAnims"></a>
### Show Animations

Animations in this library are implemented using Lottie animation library. You can get free animations files [here](https://lottiefiles.com/).

`*.json` file downloaded from *LottieFiles* should be placed in flutter project.

For example, here `cong_example.json` animation file is used in the `assets` folder to show congratulations animation in the example app.

In code, set `animations: 'path to your animation file'` arg in Widget to set Animation to the dialog.

```dart
Dialogs.materialDialog(
          color: Colors.white,
          msg: 'Congratulations, you won 500 points',
          title: 'Congratulations',
          animations: 'assets/cong_example.json',
          context: context,
          actions: [
            IconsButton(
              onPressed: () {},
              text: 'Claim',
              iconData: Icons.done,
              color: Colors.blue,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
            ),
          ]),
```


<a name="icons_buttons"></a>
## Icons buttons

The plugin provide you some out of the box customized buttons to help you creating your dialog.
#### IconsOutlineButton

This widget helps you create an outline button easily

```dart 
    IconsOutlineButton(
      onPressed: () {},
      text: 'Cancel',
      iconData: Icons.cancel_outlined,
      textStyle: TextStyle(color: Colors.grey),
      iconColor: Colors.grey,
    ),
```
#### IconsButton

This widget helps you create a material button with icons in few lines of code

```dart 
    IconsButton(
      onPressed: () {},
      text: 'Delete',
      iconData: Icons.delete,
      color: Colors.red,
      textStyle: TextStyle(color: Colors.white),
      iconColor: Colors.white,
    ),
```
<img align="center" src="https://github.com/Ezaldeen99/material_dialogs/raw/master/gifs/single_btn.png" width="300"/>

# Limitations 

it's better to make your animation to have the same background color as your dialog's background color, please use [lottie editor](https://lottiefiles.com/editor) to remove the background layer of your animation or make it same as your dialog background color before using it in the plugin.

<a name="contribute"></a>
## Contribute
Let's develop with collaborations. We would love to have contributions by raising issues and opening PRs. Filing an issue before PR is must.

<a name="credits"></a>
## Credits
This library is built using following open-source libraries.
- [Lottie for Flutter](https://pub.dev/packages/lottie)
- [MaterialDialog-Android](https://github.com/PatilShreyas/MaterialDialog-Android) for inspiration



## License
Project is published under the Apache 2.0 license. Feel free to clone and modify repo as you want, but don't forget to add reference to authors :)

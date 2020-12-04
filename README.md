[![Medium](https://img.shields.io/badge/Android%20Weekly-%23392-2CA3E6.svg?style=flat)](http://androidweekly.net/issues/issue-392)


# Flutter Material Dialogs  📱

A Flutter library aims to help you create 💪🏻*animated*, 😃 *simple*, 😎 *stylish* Material Dialogs in your app.

<table style="width:100%">
  <tr>
    <th><b>1. Material Dialog</b></th>
    <th>2. Animations Material Dialog</th> 
    <th>3. Bottom Material Dialog</th>
    <th>4. Animations Bottom Dialog</th>
  </tr>
  <tr>
    <td><img src="GIFs/SimpleMaterialDialog.gif"/></td>
    <td><img src="GIFs/AnimatedMaterialDialog.gif"/></td> 
    <td><img src="GIFs/BottomSheetMaterialDialog.gif"/></td>
    <td><img src="GIFs/AnimatedBottomSheetMaterialDialog.gif"/></td>
  </tr>
</table>


# Table of Contents:
> - [ Introduction ](#introduction)
> - [ Types of Dialog ](#types)
> - [ Implementation ](#implementation)
>    - [ Prerequisite ](#prerequisite)
>    - [ Create Dialog Instance ](#createDialogInstance)
>        - [ Material Dialog ](#createMaterialDialog)
>        - [ Bottom Sheet Material Dialog ](#createBsMaterialDialog)
>    - [ Show Animations ](#showAnims)
>        - [ Using `Resource` File ](#showAnimRes)
>    - [ Dialog State Listeners ](#stateCallbacks)
> - [ Contribute ](#contribute)    
> - [ Credits ](#credits)    

<a name="introduction"></a>
## Introduction
**MaterialDialog** This Plugin will be useful to create simple, animated, and beautiful dialogs in your next Flutter app. 
This library implements Airbnb's [*Lottie*](https://github.com/airbnb/lottie-android) library to render After Effects animation in app.

<a name="types"></a>
## Types of Dialog
**MaterialDialog** library provides two types of dialog i.e. 

<table style="width:100%">
  <tr>
    <th><b>1. Material Dialog</b></th>
    <th>2. Bottom Sheet Material Dialog</th>
  </tr>
  <tr>
    <td>A normal material dialog which can have one or two buttons.</td>
    <td>A Bottom Sheet material dialog which can have one or two buttons, is showed from bottom of device.</td> 
  </tr>
  <tr>
    <td align="center"><img src="Screenshots/MaterialDialog.png" width="75%"/></td>
    <td align="center"><img src="Screenshots/BottomSheetMaterialDialog.png" width="75%"/></td> 
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

```

<a name="createDialog"></a>
### Create Dialog
As there are two types of dialogs in library. Material Dialogs are instantiated as follows.
<a name="createMaterialDialog"></a>
#### i. Material Dialog
`Dialogs` class will be used to create your dialog, below is an example to show your dialog in the app.

```dart

Dialogs.materialDialog(
        btn1Press: () {},
        btn1Text: "Delete",
        msg: 'Are you sure? you can\'t undo this',
        title: "Delete",
        btn2Text: "Cancel",
        btn2Press: () {
          Navigator.pop(context);
        },
        color: Colors.white,
        btn1Icon: Icons.delete,
        btn2Icon: Icons.cancel,
        context: context,
      )

```
 
<img align="center" src="GIFs/SimpleMaterialDialog.gif" width="300"/>

if you want to show a dialog with only one button, please set `singleBtn:true' in your widget. By default it's false, you can read more about it below.

<a name="createBsMaterialDialog"></a>
#### ii. Bottom Sheet Material Dialog
`Dialogs` class will be used to create your dialog, use `bottomMaterialDialog`. Below is an example to show your dialog in the app.
```dart

Dialogs.bottomMaterialDialog(
        btn1Press: () {},
        btn1Text: 'Delete',
        msg: 'Are you sure? you can\'t undo this',
        title: 'Delete',
        btn2Text: 'Cancel',
        btn2Press: () {
          Navigator.pop(context);
        },
        btn1Icon: Icons.delete,
        btn2Icon: Icons.cancel,
        context: context,
      )

```

<img align="center" src="GIFs/BottomSheetMaterialDialog.gif" width="300"/>

<a name="showAnims"></a>
### Show Animations

Animations in this library are implemented using Lottie animation library. You can get free animations files [here](https://lottiefiles.com/). You can find varieties of animation files on [https://lottiefiles.com](https://lottiefiles.com/).
`*.json` file downloaded from *LottieFiles* should be placed in android project. There are two ways to place animation file (`*.json`).

For example, here `cong_example.json` animation file is used to show congratulations animation in the example app.

<a name="showAnimRes"></a>
#### i. Using `Resource` File
Downloaded json file should placed in `raw` directory of `assets`.

![](Screenshots/ScreenAnimRes.PNG)

In code, set `animations: 'path to your animation file'` arg in Widget to set Animation to the dialog.


Resource file should be passed to method. e.g. `cong_example.json`. 
```dart
Dialogs.materialDialog(
       btn1Press: () {},
       btn1Text: 'Claim',
       btn1Bcg: Colors.blue,
       color: Colors.white,
       msg: 'Congratulations, you won 500 points',
       title: 'Congratulations',
       btn2Text: 'Cancel',
       btn2IconColor: Colors.grey,
       btn1Icon: Icons.done,
       btn2Icon: Icons.cancel,
       btn2Press: () {
         Navigator.pop(context);
       },
       animations: 'assets/cong_example.json',
       context: context,
     )
```

<a name="stateCallbacks"></a>
### Dialog State Listeners 
There are three callback events and listeners for Dialog.

Following are interfaces for implementations:
- `btn1Press` - Listens for dialog first button click event.
- `btn2Press` - Listens for dialog second button click event.

for example 
```dart
 btn2Press: () {
         Navigator.pop(context);
       },

```

<a name="contribute"></a>
## Contribute
Let's develop with collaborations. We would love to have contributions by raising issues and opening PRs. Filing an issue before PR is must.

<a name="credits"></a>
## Credits
This library is built using following open-source libraries.
- [Lottie for Flutter](https://pub.dev/packages/lottie)

## License
Project is published under the Apache 2.0 license. Feel free to clone and modify repo as you want, but don't forget to add reference to authors :)

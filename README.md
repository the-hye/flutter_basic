# flutter_basic

part2

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### 2023.08.29
MaterialApp : 가장 기본이 되는 위젯 트리에서 최상위에 위치하는 앱  
Scaffold : MaterialApp에서 화면을 구성할 때 가장 기본이 되는 도화지  
SafeArea : 자식 위젯에 패딩을 넣어 디바이스 영역이 앱의 위젯 영역을 침범하는 것을 방지  
stless - StatelessWidget

### 2023.09.02
Container : 화면 내 박스 상자
- width
- height
- colors
- padding
- margin
- decoration
  - color
  - border
  - borderRadius
  - boxShadow

### 2023.09.04  
Column : Widget을 상하로 배치  
Row : Widget을 좌우로 배치  
SingleChildScrollView : 화면에 넘칠 경우 스크롤이 가능하도록 함  

### 2023.09.11  
Widget을 비율로 배치하기  
Expaned  
- 내부 객체의 높낮이에 상관없이 Flex로 선언된 모든 영역을 차지하는 위젯 
  
Flexible  
- Flexible은 객체의 사이즈에 따라 줄어들 수 있는 여지가 있다.  
  
Widget을 겹겹히 쌓아 올리기  
Align
- alignment라는 옵션을 가지게 되며 선언된 값으로 정해진 위치로 배치할 수 있으며 (x,y)로 배치할 수도 있다.
- Alignmet의 경우 정해진 공간이 아닌 화면 전체의 공간을 기준으로 컨테이너를 배치할 수 있다.
  
Positioned  
- Stack 내부에서 정확한 상하좌우 크기를 가지고 위치를 배치할 수 있다
- top, botton, left, right를 사용하여 배치 가능  
  
Stateless vs Stateful
- Stateless : 위젯의 상태가 고정적
- Stateful : 위젯의 상태변화를 표현 가능
  - initState : 위젯이 생성될 때 호출
  - dispose : 위젯이 완전히 종료될 때 호출

### 2023.09.30  
Gesture(_01)  
- CheckBox  
- RadioButton : ListTile을 통해 터치 범위 확장 가능  
- Slider
- Switch
- PopupMenuButton
  
Callback(_02)  
- VoidCallback : 반환값이 없는 callback을 넘겨줄 때 사용  
- Function : int, double 등 매개변수가 있을 때 사용  
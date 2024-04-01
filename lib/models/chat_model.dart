class chatsModel {
  final String name;
  final String msg;
  final String pic;
  final String time;

  chatsModel(this.name, this.msg, this.pic, this.time);
}

List<chatsModel> chatsData = [
  chatsModel('Jon sharma', 'Restarted application in 1,023ms',
      'https://randomuser.me/api/portraits/men/0.jpg', '12.30 PM'),
  chatsModel('Rohit', 'Reload already in progress, ignoring request',
      'https://randomuser.me/api/portraits/men/1.jpg', '10.10 PM'),
  chatsModel('sharma', 'This will add a line like this to your package',
      'https://randomuser.me/api/portraits/men/2.jpg', '03.30 AM'),
  chatsModel(
      'Random',
      'Alternatively, your editor might support dart pub get or flutter',
      'https://randomuser.me/api/portraits/men/3.jpg',
      '01.30 AM'),
  chatsModel('Prakash', 'Now in your Dart code, you can use',
      'https://randomuser.me/api/portraits/men/4.jpg', 'Yesterday'),
  chatsModel(
      'Rajesh',
      'This site uses cookies from Google to deliver and enhance the quality of its services and to analyze traffic.',
      'https://randomuser.me/api/portraits/men/5.jpg',
      'Yesterday'),
  chatsModel('User', 'Run this command, ignoring request',
      'https://randomuser.me/api/portraits/men/6.jpg', 'Yesterday'),
  chatsModel('Mathavan', 'The Equatable is used to simplify the process',
      'https://randomuser.me/api/portraits/men/7.jpg', 'Yesterday'),
  chatsModel('Aicle', 'BlocBuilder is a Flutter widget which requires a bloc',
      'https://randomuser.me/api/portraits/men/8.jpg', 'Yesterday'),
  chatsModel('Santhosh', 'building the widget in response to new states',
      'https://randomuser.me/api/portraits/men/9.jpg', 'Yesterday'),
  chatsModel('Priya', 'Running "flutter pub get" in whatsapp_ui_design',
      'https://randomuser.me/api/portraits/women/8.jpg', 'Yesterday'),
];

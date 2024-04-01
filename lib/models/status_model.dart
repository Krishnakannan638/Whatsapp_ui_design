class statusModel {
  final String name;
  final String pic;
  final String time;

  statusModel(this.name, this.pic, this.time);
}

List<statusModel> statusData = [
  statusModel('Jegathish', 'https://randomuser.me/api/portraits/men/11.jpg',
      '10 minutes ago'),
  statusModel('Rohit', 'https://randomuser.me/api/portraits/men/23.jpg',
      '20 minutes ago'),
  statusModel('sharma', 'https://randomuser.me/api/portraits/men/12.jpg',
      '35 minutes ago'),
  statusModel('Random', 'https://randomuser.me/api/portraits/men/13.jpg',
      '40 minutes ago'),
  statusModel('Prakash', 'https://randomuser.me/api/portraits/men/14.jpg',
      '55 minutes ago'),
  statusModel(
      'Rajesh', 'https://randomuser.me/api/portraits/men/15.jpg', '11.00 AM'),
  statusModel(
      'User', 'https://randomuser.me/api/portraits/men/16.jpg', '09.40 AM'),
  statusModel(
      'Mathavan', 'https://randomuser.me/api/portraits/men/17.jpg', '01.30 PM'),
  statusModel(
      'Aicle', 'https://randomuser.me/api/portraits/men/18.jpg', '02.10 PM'),
  statusModel(
      'Santhosh', 'https://randomuser.me/api/portraits/men/19.jpg', '05.50 PM'),
];

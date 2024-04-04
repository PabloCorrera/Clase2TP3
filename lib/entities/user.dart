class User{
  String name;
  String password;
User({required this.name, required this.password});

}


User user1 = User(name: 'pablo', password: '123');
User user2 = User(name: 'pablo2', password: '2345');
User user3 = User(name: 'pablo3', password: '3456');
User user4 = User(name: 'pablo4', password: '4567');
User user5 = User(name: 'pablo5', password: '5678');
User user6 = User(name: 'pablo6', password: '6789');
User user7 = User(name: 'pablo7', password: '7890');
User user8 = User(name: 'pablo8', password: '8901');
User user9 = User(name: 'pablo9', password: '9012');
User user10 = User(name: 'pablo10', password: '0123');

List<User> usuarios = [user1,user2,user3,user4,user5,user6,user7,user8,user9,user10];
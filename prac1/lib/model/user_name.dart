class UserName {
  final String title;
  final String first;
  final String last;
  const UserName(
      {required this.title, required this.first, required this.last});
      factory UserName.fromMap(Map<String,dynamic>e){
        return UserName(title: e['title'], first: e['first'], last: e['last']);
      }
}
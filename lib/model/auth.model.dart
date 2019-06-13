
enum Operator {
  all,
  add,
  read,
  edit,
  delete,
  export,
  import,
}



class Role {
  String name;
  bool isEnable;
  List<PageAuth> pageAuthList;

  Role(){
    this.pageAuthList = new List<PageAuth>();
  }
}


class User {
  String account;
  String password;
  String name;
  String email;
  String phone;
  bool isEnable;

  User({this.account, this.password}) {
    this.account = account;
    this.password = password;
  }
}




class PageAuth
{
  String featrue;
  Operator operator;

  PageAuth(){
    this.operator = null;
  }
}


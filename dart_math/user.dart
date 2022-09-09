abstract class User {
  String email;
  String role;

  User(this.email, this.role);
}

class AdminUser extends User with UserMailMixin {
  AdminUser(email) : super(email, "admin");
}

class GeneralUser extends User {
  GeneralUser(email) : super(email, "user");
}

mixin UserMailMixin on User {
  String get mailSystem {
    return email.substring(email.indexOf('@') + 1);
  }
}

class UserManager<T extends User> {
  List<T> _managedUsers = [];

  List<T> get managedUsers {
    return _managedUsers;
  }

  List<T> addUsers(List<T> users) {
    _managedUsers.addAll(users);
    return _managedUsers;
  }

  List<T> removeUsers(List<T> users) {
    _managedUsers = List.from(Set.from(_managedUsers).difference(Set.from(users)));
    return _managedUsers;
  }

  List<String> get managedUsersEmails {
    final userEmailsList = _managedUsers.map((e) => e is AdminUser ? e.mailSystem : e.email).toList();
    return userEmailsList;
  }
}
class ChangePassword {
  final String oldPassword;
  final String newPassword;
  final String repeatNewPassword;

  ChangePassword({
    this.oldPassword = '',
    this.newPassword = '',
    this.repeatNewPassword = '',
  });

  @override
  String toString() =>
      'ChangePassword(oldPassword: $oldPassword, newPassword: $newPassword, repeatNewPassword: $repeatNewPassword)';

  ChangePassword copyWith({
    String? oldPassword,
    String? newPassword,
    String? repeatNewPassword,
  }) {
    return ChangePassword(
      oldPassword: oldPassword ?? this.oldPassword,
      newPassword: newPassword ?? this.newPassword,
      repeatNewPassword: repeatNewPassword ?? this.repeatNewPassword,
    );
  }
}

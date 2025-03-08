enum PinSendMethod { sms, email }

class ContactDetails {
  final String name, icon;
  final PinSendMethod pinSendMethod;
  final String? contact;

  const ContactDetails({
    required this.name,
    required this.icon,
    required this.pinSendMethod,
    this.contact,
  });
}

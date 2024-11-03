class ContactDetails {
  final String name, icon;
  final String? contact;

  const ContactDetails({
    required this.name,
    required this.icon,
    this.contact,
  });
}

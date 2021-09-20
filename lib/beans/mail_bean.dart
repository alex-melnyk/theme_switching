class MailBean {
  const MailBean({
    required this.from,
    required this.mailbox,
    required this.time,
    required this.subject,
    required this.content,
  });

  final String from;
  final String mailbox;
  final DateTime time;
  final String subject;
  final String content;

  factory MailBean.fromMap(Map<String, dynamic> map) {
    return MailBean(
      from: map['from'],
      mailbox: map['mailbox'],
      time: DateTime.fromMillisecondsSinceEpoch(map['time']),
      subject: map['subject'],
      content: map['content'],
    );
  }
}

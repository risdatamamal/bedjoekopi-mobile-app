part of 'models.dart';

enum TransactionStatus { delivered, on_delivery, pending, cancelled }

class Transaction extends Equatable {
  final int id;
  final Coffee coffee;
  final int quantity;
  final int total;
  final String description;
  final DateTime dateTime;
  final TransactionStatus status;
  final User user;
  final String paymentUrl;

  Transaction(
      {this.id,
      this.coffee,
      this.quantity,
      this.total,
      this.description,
      this.dateTime,
      this.status,
      this.user,
      this.paymentUrl});

  factory Transaction.fromJson(Map<String, dynamic> data) => Transaction(
      id: data['id'],
      coffee: Coffee.fromJson(data['coffee']),
      quantity: data['quantity'],
      total: data['total'],
      description: data['description'],
      dateTime: DateTime.fromMillisecondsSinceEpoch(data['created_at']),
      status: (data['status'] == 'PENDING')
          ? TransactionStatus.pending
          : (data['status'] == 'DELIVERED')
              ? TransactionStatus.delivered
              : (data['status'] == 'CANCELLED')
                  ? TransactionStatus.cancelled
                  : TransactionStatus.on_delivery,
      paymentUrl: data['payment_url']);

  Transaction copyWith({
    int id,
    Coffee coffee,
    int quantity,
    int total,
    String description,
    DateTime dateTime,
    TransactionStatus status,
    User user,
  }) {
    return Transaction(
        id: id ?? this.id,
        coffee: coffee ?? this.coffee,
        quantity: quantity ?? this.quantity,
        total: total ?? this.total,
        description: description ?? this.description,
        dateTime: dateTime ?? this.dateTime,
        status: status ?? this.status,
        user: user ?? this.user);
  }

  @override
  List<Object> get props =>
      [id, coffee, quantity, total, description, dateTime, status, user];
}

// List<Transaction> mockTransactions = [
//   Transaction(
//     id: 1,
//     coffee: mockCoffees[1],
//     quantity: 10,
//     total: (mockCoffees[1].price * 10 * 1.1).round() + 9000,
//     dateTime: DateTime.now(),
//     status: TransactionStatus.on_delivery,
//     user: mockUser,
//   ),
//   Transaction(
//     id: 2,
//     coffee: mockCoffees[7],
//     quantity: 7,
//     total: (mockCoffees[7].price * 7 * 1.1).round() + 9000,
//     dateTime: DateTime.now(),
//     status: TransactionStatus.delivered,
//     user: mockUser,
//   ),
//   Transaction(
//     id: 3,
//     coffee: mockCoffees[18],
//     quantity: 4,
//     total: (mockCoffees[18].price * 4 * 1.1).round() + 9000,
//     dateTime: DateTime.now(),
//     status: TransactionStatus.cancelled,
//     user: mockUser,
//   ),
// ];

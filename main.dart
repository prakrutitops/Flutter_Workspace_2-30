import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(home: MyPaymentPage());
  }

}
class MyPaymentPage extends StatefulWidget {
  const MyPaymentPage({super.key});

  @override
  State<MyPaymentPage> createState() => _MyPaymentPageState();
}

class _MyPaymentPageState extends State<MyPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// class MyPaymentPage extends StatefulWidget
// {
//   @override
//   State<MyPaymentPage> createState() => _MyPaymentPageState();
// }
//
// class _MyPaymentPageState extends State<MyPaymentPage>
// {
//   late Token _paymentToken;
//   late PaymentMethod _paymentMethod;
//   late String _error;
//   final String _currentSecret = 'YOUR_STRIPE_SECRET_KEY';
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     StripePayment.setOptions(
//       StripeOptions(
//         publishableKey: 'YOUR_STRIPE_PUBLISHABLE_KEY',
//         merchantId: 'Test',
//         androidPayMode: 'test',
//       ),
//     );
//   }
//
//
//   Future<void> makepayment() async
//   {
//     StripePayment.createPaymentMethod(
//       PaymentMethodRequest(card: CreditCard()),
//     ).then((paymentMethod) {
//       setState(() {
//         _paymentMethod = paymentMethod;
//       });
//       // Use _paymentMethod to make the payment
//     }).catchError(setError);
//   }
//   void setError(dynamic error) {
//     setState(()
//     {
//       _error = error.toString();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(appBar: AppBar(title: Text("Payment ntegration")),
//       body: Column(
//
//         children: [
//           ElevatedButton(
//             onPressed: ()
//             {
//               makepayment();
//             },
//             child: Text("Make Payment"),),
//
//           if (_error != null) Text('Error: $_error'),
//         ],
//       ) ,
//
//
//     );
//   }
// }
//
//
//
//

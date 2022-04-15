import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ,
    );
  }
}







































// import 'package:api_sample/apis.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final _numberController = TextEditingController();

//   var rs="type a number";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               controller: _numberController,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                   border: OutlineInputBorder(), hintText: "number"),
//             ),
//             ElevatedButton(
//                 onPressed: () async{
//                   final _number = _numberController.text;
//                   final result= await getNumberFact(number: _number);
//                   print(result.text);
//                   setState(() {
//                     rs=result.text?? "nulljjjj";
//                   });
//                 },
//                 child: const Text("Get Result")),
//              Text(rs),
//           ],
//         ),
//       )),
//     );
//   }
// }

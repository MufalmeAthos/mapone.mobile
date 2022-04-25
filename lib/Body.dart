import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

 class Body extends StatefulWidget {
   final title;
   const Body({Key? key, this.title}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }


  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("Home"),),
       body: SingleChildScrollView(
         child: Container(
           child: Column(
             children: [
               Text("Here is the new page"),
               Center(

                 child: Column(

                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     const Text(
                       'You have pushed the button this many times:',
                     ),
                     Text(
                       '$_counter',
                       style: Theme.of(context).textTheme.headline4,
                     ),
                     GoogleMap(
                       onMapCreated: _onMapCreated,
                       initialCameraPosition: CameraPosition(
                         target: _center,
                         zoom: 11.0,
                       ),
                     ),
                   ],
                 ),
               ),
             ],
           ),

         ),
       ),
       floatingActionButton: FloatingActionButton(
         onPressed: _incrementCounter,
         tooltip: 'Incrementation',
         child: const Icon(Icons.add),
       ),
     );
   }
}

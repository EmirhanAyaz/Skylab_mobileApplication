import 'package:flutter/material.dart';
void main(){
  runApp(const Uygulama());
}
class Uygulama extends StatelessWidget {
  const Uygulama({super.key});


  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    var cardSize = (screenWidth-60)/2;
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha:0.1),
            shape: BoxShape.circle,
          ),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ),

        title: SizedBox(child: Image.asset("assets/logo/skylab_green.png",width: 300,),),
      actions: [
        Container(
          padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(3),
            decoration:BoxDecoration(
            color: Colors.black.withValues(alpha:0.1),
            shape: BoxShape.circle),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_outlined))
        ),const SizedBox(width: 5,),],),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha:0.1),
              borderRadius: BorderRadius.circular(100),

            ),

            child: const Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 20,),
                Expanded(child:
                TextField(decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: 'What are you looking for?',
                    border: InputBorder.none
                ),
                ),),
              ],
            ),),

         SizedBox(
           child: Row(
             children: [
               const Icon(Icons.location_pin,color: Colors.green,),
               const Text('Ship to   ',style: TextStyle(fontWeight: FontWeight.w300),),
               const Text('Yıldız Teknik Üniversitesi',style: TextStyle(fontWeight: FontWeight.w600),),
               const SizedBox(width: 95,),
               IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_right_outlined))
             ],
           ),
         ), //Konum
            const SizedBox(
              width: 10,
              height: 20,
            ),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             children: [
               ...["adidas1","converse","jordan","nike","puma","vans"]
                   .map((e)=>Container(
                 margin: const EdgeInsets.only(right: 20),
                 width: 70,
                 height: 70,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.black.withValues(alpha: 0.1  )
                 ),
                 child: Image.asset('assets/brands/$e.png'),
               ),),
             ],),
         ), //logolar
const SizedBox(height: 50,),
         Container(
           width: 400,
           height: 150,
           decoration: BoxDecoration(
             color:Colors.black,
             borderRadius: BorderRadius.circular(20),
           ),
         child: Row(
           children: [
             Image.asset('assets/shoes/Reklam.png' , ),
           const SizedBox(width: 40,),

           Column(
             children: [
               const SizedBox(height: 30,),
               const Text('Year-End Sale',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600 ,fontSize: 18),),
               Text('Up To 90%' , style: TextStyle(color: Colors.grey[300]),),
               const SizedBox(height: 10,),
               ElevatedButton(onPressed: (){}, child: const Text('Show Now',style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.green,
               ),),

             ],
           ),
           ],

         ),
         ), // Reklam Shop Now kısmı
          const SizedBox(height: 20,),
            Row(
              children: [
                const Text('New Arrival',style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),),
                const SizedBox(width: 210,),
                TextButton(onPressed: (){}, child: const Text('see all',style: TextStyle(color: Colors.green),)),
              ],
            ), //see all kısmı
          Expanded(child: SingleChildScrollView(
              child: Wrap(
                  spacing: 1, // Yatay boşluk
                  runSpacing: 1, // Dikey boşluk,
              children: [
              ...List.generate(6, (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //ayakkabı resimleri
                  Container(
                    margin: const EdgeInsets.only(right: 9,bottom: 5),
                    width: cardSize,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha:0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset("assets/shoes/${index+1}.png",scale: 0.01,),
                  ),
                  Text('${index+1}. ayakkabi',textAlign: TextAlign.start,),
                  Text('${(index+1*1000)}TL', style:TextStyle(fontSize: 10,)),
                ],
              ),),//Ayakkabı fotoları


          ]

          )

    ),),],
        ),

      ),
    ),);
  }
}

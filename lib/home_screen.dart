import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/3.jpg"),
                  radius: 20,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: 2),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 10,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 9,
                  child:
                      Text('2', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              "Chats",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            )
          ],
        ),
        titleSpacing: 20,
        actions: [
          CircleAvatar(
              backgroundColor: const Color(0xff424242),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ))),
          const SizedBox(
            width: 20,
          ),
          CircleAvatar(
              backgroundColor: const Color(0xff424242),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ))),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20,top: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    filled: true,
                    fillColor: Color(0xff424242),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff808080),
                    ),
                    hintStyle: TextStyle(color: Color(0xff808080)),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff808080)),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                  child: ListView.separated(
                    separatorBuilder: (context,i)=> VerticalDivider(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,i)=> buildRowStories(),itemCount: 10,),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,i)=>buildColumnChats(),
                  separatorBuilder: (context,i)=>SizedBox(height: 20,),
                  itemCount: 12
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildRowStories (){
  return SizedBox(
    width: 70,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 35,
              foregroundImage: AssetImage("assets/3.jpg"),
            ),
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 9,
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 8,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Fady Zarif Roshdy",
          style: TextStyle(color: Colors.white),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        )
      ],
    ),
  );
}

Widget buildColumnChats(){
  return Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: const [
          CircleAvatar(
            radius: 35,
            foregroundImage: AssetImage("assets/3.jpg"),
          ),
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 9,
          ),
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 8,
          ),
        ],
      ),
      const VerticalDivider(),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5,),
            Container(
              width: 90,
              child: const Text(
                " Fady Zarif Fady Zarif Fady Zarif Fady Zarif",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 2,),
            Row(
              children: const [
                Expanded(
                  child: Text(
                    "قولتلك ابعتلك قولتلك ابعتلكقولتلك ابعتلك قولتلك ابعتلكقولتلك ابعتلك",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  ".11:48 am",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ],
            )
          ],
        ),
      )
    ],
  );

}
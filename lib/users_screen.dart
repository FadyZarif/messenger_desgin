import 'package:flutter/material.dart';

class UsersModel{
  final int id;
  final String number,name;
  UsersModel(
      this.id,
      this.name,
      this.number
      );
}

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  List<UsersModel> users = [
    UsersModel(1, 'Fady Zarif', "+201220302036"),
    UsersModel(2, 'Fady', "+201110636565"),
    UsersModel(3, 'Fady Roshdy', "+201220302036"),
    UsersModel(4, 'Fady Zarif Roshdy', "+201220302036"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
      ),
      body: Padding(
        padding:  const EdgeInsets.all(20),
        child: ListView.separated(
            itemBuilder: (context,i)=>buildUsersList(users[i]),
            separatorBuilder: (context,i)=>const Divider(color: Colors.black12,thickness: 1,height: 20),
            itemCount: users.length
        ),
      ),
    );
  }
}

Widget buildUsersList(UsersModel userData){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [
      CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 30,
        child: Text("${userData.id}",style: const TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      const SizedBox(
        width: 20,
      ),
      Expanded(
        child: SizedBox(
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(userData.name,maxLines: 1,overflow: TextOverflow.ellipsis,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              const Divider(thickness: 0,color: Colors.transparent,height: 7,),
              Text(userData.number,maxLines: 1,overflow: TextOverflow.ellipsis,style: const TextStyle(fontSize: 15,color: Colors.grey),)
            ],
          ),
        ),
      )
    ],
  );
}


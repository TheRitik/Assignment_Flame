import 'package:flutter/material.dart';
// import 'package:flutter/material/bottom_navigation_bar.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('asset/img4.jpg'),
            radius: 8,
            // foregroundImage: AssetImage('assets/img1.jpeg'),
            backgroundColor: Colors.white,
          ),
        ),
        title:Text('Find Flames',
        style: TextStyle(
          color: Colors.pinkAccent,
        ),
        ),
        centerTitle: true,
        backgroundColor:Color(0xFFFFC3D2),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Icon(Icons.settings,
            size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        height: size.height*0.8,
        child: Column(
          children: [
            Container(
              height: 180,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('asset/img1.jpeg'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('asdfas'),
                      ],
                    ),
                    SizedBox(
                      height: 180,
                      width: 15,
                    ),
                    Column(
                      children: [
                        Image.asset('asset/img1.jpeg'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Harry'),
                      ],
                    ),
                    SizedBox(
                      height: 180,
                      width: 15,
                    ),
                    Column(
                      children: [
                        Image.asset('asset/img1.jpeg'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('zenner'),
                      ],
                    ),
                    SizedBox(
                      height: 180,
                      width: 15,
                    ),
                    Column(
                      children: [
                        Image.asset('asset/img1.jpeg'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('chelv'),
                      ],
                    ),
                    SizedBox(
                      height: 180,
                      width: 15,
                    ),
                    Column(
                      children: [
                        Image.asset('asset/img1.jpeg'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Roaster'),
                      ],
                    ),
                    SizedBox(
                      height: 180,
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: size.width/1.1,
              child: TextField(
                style: TextStyle(
                  fontSize: 20,
                ),
                // textAlign: Alignment.center,
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText:'Search',
                  // border: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              child:ListView(
                children: [
                  ListTile(
                    leading:CircleAvatar(
                      backgroundImage: AssetImage('asset/img3.jpg'),
                      maxRadius: 20,
                    ),
                    title: Text('john dow'),
                    subtitle:Text('typing....',
                    style:TextStyle(color: Colors.greenAccent),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading:CircleAvatar(
                      backgroundImage: AssetImage('asset/img6.jpg'),
                      maxRadius: 20,
                    ),
                    title: Text('James'),
                    subtitle:Text('Hi!!!',
                      style:TextStyle(color: Colors.grey[800]),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading:CircleAvatar(
                      backgroundImage: AssetImage('asset/img5.jpg'),
                      maxRadius: 20,
                    ),
                    title: Text('Tim'),
                    subtitle:Text('Hiiii!!',
                      style:TextStyle(color: Colors.grey[800]),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: ''),
          NavigationDestination(icon: Icon(Icons.explore), label: ''),
          NavigationDestination(icon: Icon(Icons.calendar_month), label: ''),
          NavigationDestination(icon: Icon(Icons.chat), label: ''),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xffF5F7FB),

      body: SafeArea(
        child: SingleChildScrollView(

          child: Column(
            children: [

              // Header Section
              Container(
                height: 250,
                width: double.infinity,

                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff4A6CF7),
                      Color(0xff6A8DFF),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),

                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    const CircleAvatar(
                      radius: 55,

                      backgroundImage: NetworkImage(
                        "https://i.pravatar.cc/300",
                      ),
                    ),


                    const SizedBox(height: 15),


                    const Text(
                      "MD Mahmudur Hasan",

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),


                    const SizedBox(height: 5),


                    const Text(
                      "Computer Science Student",

                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),

                  ],
                ),
              ),



              const SizedBox(height: 25),



              // About Card
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),

                child: Card(

                  elevation: 5,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),


                  child: Padding(

                    padding: const EdgeInsets.all(20),

                    child: Column(

                      crossAxisAlignment:
                          CrossAxisAlignment.start,


                      children: [


                        const Text(
                          "About Me",

                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),


                        const SizedBox(height: 15),


                        const Text(

                          "I am a Computer Science student "
                          "interested in software development, "
                          "mobile application development, "
                          "IoT and Artificial Intelligence. "
                          "I love solving problems and learning "
                          "new technologies.",


                          style: TextStyle(
                            fontSize: 16,
                            height: 1.6,
                            color: Colors.black87,
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),



              const SizedBox(height: 20),



              // Information Cards
              Padding(

                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),


                child: Column(

                  children: [


                    profileItem(
                      Icons.school,
                      "Education",
                      "Independent University, Bangladesh",
                    ),


                    profileItem(
                      Icons.code,
                      "Programming",
                      "Flutter, Dart, Python, JavaScript",
                    ),


                    profileItem(
                      Icons.location_on,
                      "Location",
                      "Dhaka, Bangladesh",
                    ),


                    profileItem(
                      Icons.email,
                      "Email",
                      "mahmudur@example.com",
                    ),


                  ],
                ),
              ),



              const SizedBox(height: 20),



              // Skills
              Padding(

                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),


                child: Card(

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),


                  child: Padding(

                    padding: const EdgeInsets.all(20),


                    child: Column(

                      crossAxisAlignment:
                          CrossAxisAlignment.start,


                      children: [


                        const Text(
                          "Skills",

                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),


                        const SizedBox(height: 15),


                        Wrap(

                          spacing: 10,

                          children: [


                            skillChip("Flutter"),

                            skillChip("Dart"),

                            skillChip("Python"),

                            skillChip("IoT"),

                            skillChip("Database"),

                            skillChip("GitHub"),

                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),



              const SizedBox(height: 30),


              // Button

              ElevatedButton(

                style: ElevatedButton.styleFrom(

                  backgroundColor:
                      const Color(0xff4A6CF7),

                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30),
                  ),

                ),


                onPressed: () {},


                child: const Text(
                  "Edit Profile",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),

              ),



              const SizedBox(height: 30),

            ],
          ),
        ),
      ),
    );
  }




  // Profile Item Widget

  Widget profileItem(
      IconData icon,
      String title,
      String value,
      ) {

    return Card(

      margin:
          const EdgeInsets.only(bottom: 12),


      child: ListTile(

        leading: CircleAvatar(

          backgroundColor:
              const Color(0xffE8EDFF),

          child: Icon(
            icon,
            color:
                const Color(0xff4A6CF7),
          ),
        ),


        title: Text(
          title,

          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),


        subtitle: Text(value),

      ),
    );
  }




  // Skill Chip Widget

  Widget skillChip(String text) {

    return Chip(

      label: Text(text),


      backgroundColor:
          const Color(0xffE8EDFF),

    );
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messenger extends StatelessWidget


{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.camera_alt,
                    size: 16,
                    color: Colors.white,
                  ))),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.edit,
                    size: 16,
                    color: Colors.white,
                  )))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'search',
                    style: TextStyle(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 66.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 33.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Maged Ghabour',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 66.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 33.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Mahmoud Hlal',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 66.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 33.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Mohamed Elsakaan',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 66.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 33.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Mostafa Ali',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 66.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 33.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Yehya Tarek',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 66.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 33.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Mohamed Aboelsoud',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 66.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 33.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Amr M Khalaf',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 66.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 33.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Osama Elsayed',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 66.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 33.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Mohamed Tariq',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 66.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 33.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Mohamed Aboelsoud',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ibrahim Warda',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'مرحبا كيف حالك',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:00 PM',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed Rady Elsherbiny',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello aboelsoud , how are you , i wish to meet you brother',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '11:00 PM',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mohamed Adel',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'join us to complete this form ..Please!',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '08:19 AM',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mohamed Talal',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hallo wie geht es dir',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '05:14 PM',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Yasser',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Was hast du mit unserem neuesten Abschlussprojekt-Update gemacht?',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '04:09 AM',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed ِAboelsoud',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'How are things going with you ? ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '12:29 PM',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mahmoud Hlal',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'How are things going with you ? ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '01:11 PM',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mostafa sayed',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'How are things going with you ? ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '07:29 PM',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/181102283_3646266158811973_8076283720874110647_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOIhmaqueZtQf1CHMucAItme-9BM_3kFGZ770Ez_eQUdfJNlnhAxjRUjfN5mH6Jmj8kiG3v2O_EHllUpfEW8sR&_nc_ohc=m91dqEyNgkQAX_K4R9e&_nc_ht=scontent.fcai1-2.fna&oh=33293a988a14b8d50db9c3f8f429e76c&oe=6184AE2D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 3.0),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ali ',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'How are things going with you ? ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '12:29 PM',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

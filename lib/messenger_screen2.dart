import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SingleChildScrollView(
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
              Container(
                height: 105,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
                  itemCount: 5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,    // push it outside with singleChildScrollview
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(height: 20),
                  itemCount: 15)
            ],
          ),
        ),
      ),
    );
  }

  // 1.build item
  // 2. build llist
  // 3.add item to list
  //arrow function
  Widget buildChatItem() => Row(
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
                padding:
                    const EdgeInsetsDirectional.only(bottom: 3.0, end: 3.0),
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
      );
  Widget buildStoryItem() => Container(
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
                  padding:
                      const EdgeInsetsDirectional.only(bottom: 3.0, end: 3.0),
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
      );

/*{
    return Row(
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
    );
}*/

}

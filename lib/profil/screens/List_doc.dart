import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scores/profil/components/Item_list.dart';


class List_doc extends StatefulWidget {
  @override
  _List_docState createState() => _List_docState();
}

class _List_docState extends State<List_doc> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Liste des docteurs",
                  style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.w700,
                ),
      )
            ),
            GridView.count(

              padding: const EdgeInsets.all(35),
              crossAxisSpacing: MediaQuery.of(context).size.width*0.04,
              mainAxisSpacing: MediaQuery.of(context).size.height*0.04,
              crossAxisCount: 2,
               children: [
                Item_list(image:  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSngnz-3bm3P7nksGQRE2P6sYYHgA15X0oMGA&usqp=CAU", text: "Salem"),
                Item_list(image: "https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop", text: "salma"),
                 Item_list(image: "https://cdn.sanity.io/images/0vv8moc6/hcplive/0ebb6a8f0c2850697532805d09d4ff10e838a74b-200x200.jpg?auto=format", text: "Walid"),
                 Item_list(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_m5MvU6DXK6ax_7_fwhCV5Y2IXfPlC0JUXIwl7JUwr9t6QChWPz3VqHOrn9bk0OOSfN8&usqp=CAU", text: "sondes"),
                 Item_list(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZlb42gWMSSQ3bRAVEcxl62o5rwwRM4_WTV0UhOROwKD4ww5c0mwishbxdSBDX47HyBXk&usqp=CAU", text: "kamel"),
                 Item_list(image: "https://cdn.sanity.io/images/0vv8moc6/hcplive/0ebb6a8f0c2850697532805d09d4ff10e838a74b-200x200.jpg?auto=format", text: "Walid"),
               ],
            )
          ],
        ),
    )
    ;
  }
}

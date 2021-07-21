import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_segroup/pages/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences preferences;
  bool loading = false;
  bool isLogeding = false;

  @override
  void initState() {
    super.initState();
    isSignedIn();
  }
  void isSignedIn() async {
    setState(() {
      loading = true;
    });
    preferences = await SharedPreferences.getInstance();
    isLogeding = await googleSignIn.isSignedIn();
    if(isLogeding){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage()
          )
      );
    }
    setState(() {
      loading = false;
    });
  }
  Future handleSignIn() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      loading = true;
    });
    GoogleSignInAccount googleUser  = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =  await googleUser.authentication;
    // ignore: deprecated_member_use
    FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken
    );
    if(firebaseUser != null){
      final QuerySnapshot result = await Firestore.instance.collection("users").where("id", isEqualTo: firebaseUser.uid).getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      if(documents.length == 0){
        //insert the user to our collection
        Firestore.instance
            .collection("user")
            .document(firebaseUser.uid)
            .setData({
              "id" : firebaseUser.uid,
              "username"  : firebaseUser.displayName,
              "profilePicture" : firebaseUser.photoURL
        });
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



// class Login extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

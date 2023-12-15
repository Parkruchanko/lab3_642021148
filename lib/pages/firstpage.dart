import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
    final _loginFormKey = GlobalKey<FormState>();
    final TextEditingController _usernameCtrl = TextEditingController();
    final TextEditingController _passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("sorn shop"),
        backgroundColor: Color.fromARGB(255, 231, 35, 231),
      ),
      body: Form(
        key: _loginFormKey,
        child: Column(
            children: [
                SizedBox(
                    height: 20,
                     ),
                TextFormField(
                    validator: (value) {       
                    if(value!.isEmpty){
                        return "plese enter you username.";
                    }
                    return null;
                    },
                    controller: _usernameCtrl,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: "Username",
                        prefixIcon: Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color:Colors.white)),
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color:Colors.white)),
                    ),
                ),
                SizedBox(
                    height: 20,
                     ),
                TextFormField(
                    validator: (value) {       
                    if(value!.isEmpty){
                        return "plese enter you Plassword.";
                    }
                    return null;
                    },
                    obscureText: true,
                    obscuringCharacter: "@",
                    controller: _passwordCtrl,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color:Colors.white)),
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color:Colors.white)),
                    ),
                ),  
                SizedBox(height: 20,
                ),
                ElevatedButton(onPressed: (){
                    print("onpressed");
                    if(_loginFormKey.currentState!.validate()) {
                        print("SuccessFul");
                    }
                }, 
                child: Text("Login"))

            ],
        )
        ),
    );
  }
}

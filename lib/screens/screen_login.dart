import 'package:flutter/material.dart';
import 'package:pet_adote/screens/screen_anuncios.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar com o icone do pet adote
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/img/logo_app_pet_name.png',
          width: 210,
        ),
        toolbarHeight: 190,
        backgroundColor: Color(0xff2be0b5),
      ),

      //parte do body com os forms e buttons
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          top: 30,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),

            //Form de Email
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'KGred',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //Form de Senha
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  fontFamily: 'KGred',
                ),
              ),
            ),

            //Recuperar senha
            Container(
              height: 50,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Esqueceu a senha?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontFamily: 'KGred',
                  ),
                ),
                //ação do botao
                onPressed: () => {
                  Navigator.pushNamed(context, '/recuperarsenha'),
                },
              ),
            ),

            //sizedbox pra dar espaço
            SizedBox(
              height: 30,
            ),

            //botao Login
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Color(0xff2be0b5),
                //ação do botao
                onPressed: () => {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/homescreen', (route) => false),
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: 'KGred',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      child: SizedBox(
                        child: Image.asset('assets/img/paw_icon.png'),
                        height: 28,
                        width: 28,
                      ),
                    )
                  ],
                ),
              ),
            ),

            //botao cadastre-se
            Container(
              height: 60,
              margin: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Para doar ou adotar\n" "Cadastre-se",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'KGred',
                    fontSize: 16,
                  ),
                ),
                //ação ao aperta o botao
                onPressed: () => {
                  Navigator.pushNamed(context, '/cadastro'),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FullScreenPage extends StatelessWidget {
  String imgPath;

  FullScreenPage(this.imgPath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SizedBox.expand(
        child: new Container(
          // decoration: ,
          child: new Stack(
            children: [
              new Align(
                alignment: Alignment.center,
                child: Hero(
                  tag: imgPath,
                  child: new Image.network(imgPath),
                ),
              ),
              new Align(
                alignment: Alignment.topCenter,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    new AppBar(
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      leading: new IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

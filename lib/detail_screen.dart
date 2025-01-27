import 'package:flutter/material.dart';
import 'package:rempah_app/list_rempah.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  final Rempah RempahItem;
  const DetailScreen({Key? key, required this.RempahItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailScreenLand(RempahItem: RempahItem);
        } else {
          return DetailScreenPort(RempahItem: RempahItem);
        }
      },
    );
  }
}

class DetailScreenPort extends StatelessWidget {
  final Rempah RempahItem;
  const DetailScreenPort({Key? key, required this.RempahItem})
      : super(key: key);

  // Function to launch URL
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight * 0.4; // 50% dari tinggi layar
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Stack(
                children: [
                  Center(
                    child: Image.asset(
                      RempahItem.imageAsset,
                      fit: BoxFit.cover,
                      height: imageHeight,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(48)),
                  color: Colors.green,
                ),
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 65, left: 50),
                      child: Text(
                        RempahItem.name,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, top: 5),
                      child: Text(
                        RempahItem.scientificName,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      // width: 300,
                      padding: EdgeInsets.only(right: 50),
                      margin: EdgeInsets.only(left: 50, top: 25),
                      child: Text(
                        RempahItem.description,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            // fontWeight: FontWeight.w200,
          
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      // width: 300,
                      padding: EdgeInsets.only(right: 50),
                      margin: EdgeInsets.only(left: 50, top: 10),
                      child: Text(
                        RempahItem.uses,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            // fontWeight: FontWeight.w200,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 60),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            height: 50,
                            width: 300,
                            child: ElevatedButton(
                              onPressed: () async {
                                final Uri url = Uri.parse(RempahItem.url);
                                if (!await launchUrl(url)) {
                                  throw Exception('Could not launch $url');
                                }
                              },
                              child: Text(
                                'More Info',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailScreenLand extends StatelessWidget {
  final Rempah RempahItem;
  const DetailScreenLand({Key? key, required this.RempahItem})
      : super(key: key);

  // Function to launch URL
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Image.asset(RempahItem.imageAsset),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(48)),
                    color: Colors.green,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, left: 50),
                        child: Text(
                          RempahItem.name,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50, top: 5),
                        child: Text(
                          RempahItem.scientificName,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        // width: 300,
                        padding: EdgeInsets.only(right: 50),
                        margin: EdgeInsets.only(left: 50, top: 25),
                        child: Text(
                          RempahItem.description,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              // fontWeight: FontWeight.w200,

                              color: Colors.white),
                        ),
                      ),
                      Container(
                        // width: 300,
                        padding: EdgeInsets.only(right: 50),
                        margin: EdgeInsets.only(left: 50, top: 10),
                        child: Text(
                          RempahItem.uses,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              // fontWeight: FontWeight.w200,
                              color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 30),
                            height: 50,
                            width: 300,
                            child: ElevatedButton(
                              onPressed: () async {
                                final Uri url = Uri.parse(RempahItem.url);
                                if (!await launchUrl(url)) {
                                  throw Exception('Could not launch $url');
                                }
                              },
                              child: Text(
                                'More Info',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container(//--> SHARE BUTTON
                                  height: 45.0,
                                  width: 45.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(90.0),
                                    shadowColor: Colors.blueGrey,
                                    color: Colors.blueAccent,
                                    elevation: 7.0,
                                    child: GestureDetector(
                                      onTap: () async {// Share
                                       var res = await http.get(img);
                                        var documentDirectory = await getApplicationDocumentsDirectory();
                                        File file = new File(
                                          join(documentDirectory.path, 'imagetest.png')
                                        );
                                        file.writeAsBytesSync(res.bodyBytes);
                                        List<int> imageBytes = file.readAsBytesSync();
                                        print(imageBytes);
                                        String base64Image = base64Encode(imageBytes);
                                        AdvancedShare.generic(msg: "Hello", url: file.path).then((response) {
                                          handleResponse(response);
                                        });
                                      },
                                      child: Center(
                                        child: new IconTheme(
                                          data: new IconThemeData(
                                              color: Colors.white), 
                                          child: new Icon(Icons.share),
                                      ),
                                      ),
                                    ),
                                  )),  

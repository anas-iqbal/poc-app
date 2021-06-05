import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:poc_app/models/food_detail_response_model.dart';
import 'package:poc_app/utils/app_theme.dart';

class BaseketTileWidget extends StatelessWidget {
  final String imgPath;
  final String title;
  final Function(String title) onRemoveClick;

  BaseketTileWidget(
      {Key key,
      @required this.imgPath,
      @required this.title,
      @required this.onRemoveClick})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: double.infinity,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CachedNetworkImage(
                fit: BoxFit.fill,
                height: double.infinity,
                width: 100,
                imageUrl: imgPath,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: CircularProgressIndicator(
                      valueColor:
                          AlwaysStoppedAnimation<Color>(AppTheme.colorPrimary),
                      value: downloadProgress.progress),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  onRemoveClick(title);
                },
                child: Icon(
                  Icons.remove_circle,
                  color: AppTheme.colorPrimary,
                  size: 30.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

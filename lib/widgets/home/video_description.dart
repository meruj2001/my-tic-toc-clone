import 'package:flutter/material.dart';
import 'package:flutter_tic_toc_clone/res/app_assets.dart';

Widget onScreenControllers() => Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    "@someUsername",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 40)
              ],
            ),
          ),
          const SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(child: Image.asset(AppAssets.avatar)),
              const SizedBox(height: 20),
              const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 50,
              ),
              const Text(
                "20.8K",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              const Icon(
                Icons.comment,
                color: Colors.white,
                size: 50,
              ),
              const Text(
                "12.8K",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              const Icon(
                Icons.reply,
                color: Colors.white,
                size: 50,
              ),
              const SizedBox(height: 70),
            ],
          ),
        ],
      ),
    );

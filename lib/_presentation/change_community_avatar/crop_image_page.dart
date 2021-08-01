import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/change_community_avatar/change_community_avatar_bloc.dart';

class CropSample extends StatefulWidget {
  final Uint8List fileAsBytes;

  const CropSample({
    Key? key,
    required this.fileAsBytes,
  }) : super(key: key);
  @override
  _CropSampleState createState() => _CropSampleState();
}

class _CropSampleState extends State<CropSample> {
  final _cropController = CropController();

  var _isSumbnail = false;
  var _isCropping = false;
  Uint8List? _croppedData;

  @override
  void initState() {
    super.initState();
  }

  // Future<void> _loadAllImages() async {

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Visibility(
            visible: !_isCropping,
            child: Column(
              children: [
                // if (_imageDataList.isNotEmpty)
                //   Padding(
                //     padding: const EdgeInsets.all(16),
                //     child: Row(
                //       children: [
                //         // _buildSumbnail(_imageDataList[0]),
                //         // const SizedBox(width: 16),
                //         //   _buildSumbnail(_imageDataList[1]),
                //         //   const SizedBox(width: 16),
                //         //   _buildSumbnail(_imageDataList[2]),
                //         //   const SizedBox(width: 16),
                //         //   _buildSumbnail(_imageDataList[3]),
                //       ],
                //     ),
                //   ),
                Expanded(
                  child: Visibility(
                    visible: _croppedData == null,
                    child: Stack(
                      children: [
                        Crop(
                          controller: _cropController,
                          image: widget.fileAsBytes,
                          onCropped: (croppedData) {
                            setState(() {
                              _croppedData = croppedData;
                              _isCropping = false;
                            });
                            context.read<ChangeCommunityAvatarBloc>().add(
                                  ChangeCommunityAvatarEvent.imageCropped(
                                      croppedData),
                                );
                          },
                          withCircleUi: true,
                          initialSize: 0.5,
                          maskColor: _isSumbnail ? Colors.white : null,
                          cornerDotBuilder: (size, index) => _isSumbnail
                              ? const SizedBox.shrink()
                              : const DotControl(),
                        ),
                        Positioned(
                          right: 16,
                          bottom: 16,
                          child: GestureDetector(
                            onTapDown: (_) =>
                                setState(() => _isSumbnail = true),
                            onTapUp: (_) => setState(() => _isSumbnail = false),
                            child: CircleAvatar(
                              backgroundColor: _isSumbnail
                                  ? Colors.blue.shade50
                                  : Colors.blue,
                              child: const Center(
                                child: Icon(Icons.crop_free_rounded),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    replacement: Center(
                      child: _croppedData == null
                          ? SizedBox.shrink()
                          : Image.memory(_croppedData!),
                    ),
                  ),
                ),
                if (_croppedData != null)
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(_croppedData);
                      },
                      child: Text(
                        'CONFIRM',
                        style: TextStyle(color: Colors.white),
                      )),

                if (_croppedData == null)
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: Icon(Icons.circle),
                                onPressed: () {
                                  _cropController.withCircleUi = true;
                                }),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isCropping = true;
                              });
                              _cropController.cropCircle();
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Text('CROP IT!'),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
              ],
            ),
            replacement: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  Expanded _buildSumbnail(Uint8List data) {
    return Expanded(
      child: InkWell(
        onTap: () {
          _croppedData = null;
        },
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 8,
              color: Colors.blue,
            ),
          ),
          child: Image.memory(
            data,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// Copyright 2023, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

/// The type of operation that generated the action code from calling
/// [TaskState].
enum PigeonStorageTaskState {
  /// Indicates the task has been paused by the user.
  paused,

  /// Indicates the task is currently in-progress.
  running,

  /// Indicates the task has successfully completed.
  success,

  /// Indicates the task was canceled.
  canceled,

  /// Indicates the task failed with an error.
  error,
}

class PigeonStorageFirebaseApp {
  PigeonStorageFirebaseApp({
    required this.appName,
    this.tenantId,
  });

  String appName;

  String? tenantId;

  Object encode() {
    return <Object?>[
      appName,
      tenantId,
    ];
  }

  static PigeonStorageFirebaseApp decode(Object result) {
    result as List<Object?>;
    return PigeonStorageFirebaseApp(
      appName: result[0]! as String,
      tenantId: result[1] as String?,
    );
  }
}

class PigeonStorageReference {
  PigeonStorageReference({
    required this.bucket,
    required this.fullPath,
    required this.name,
  });

  String bucket;

  String fullPath;

  String name;

  Object encode() {
    return <Object?>[
      bucket,
      fullPath,
      name,
    ];
  }

  static PigeonStorageReference decode(Object result) {
    result as List<Object?>;
    return PigeonStorageReference(
      bucket: result[0]! as String,
      fullPath: result[1]! as String,
      name: result[2]! as String,
    );
  }
}

class PigeonFullMetaData {
  PigeonFullMetaData({
    this.metadata,
  });

  Map<String?, Object?>? metadata;

  Object encode() {
    return <Object?>[
      metadata,
    ];
  }

  static PigeonFullMetaData decode(Object result) {
    result as List<Object?>;
    return PigeonFullMetaData(
      metadata: (result[0] as Map<Object?, Object?>?)?.cast<String?, Object?>(),
    );
  }
}

class PigeonListOptions {
  PigeonListOptions({
    this.maxResults,
    this.pageToken,
  });

  /// If set, limits the total number of `prefixes` and `items` to return.
  ///
  /// The default and maximum maxResults is 1000.
  int? maxResults;

  /// The nextPageToken from a previous call to list().
  ///
  /// If provided, listing is resumed from the previous position.
  String? pageToken;

  Object encode() {
    return <Object?>[
      maxResults,
      pageToken,
    ];
  }

  static PigeonListOptions decode(Object result) {
    result as List<Object?>;
    return PigeonListOptions(
      maxResults: result[0] as int?,
      pageToken: result[1] as String?,
    );
  }
}

class PigeonSettableMetadata {
  PigeonSettableMetadata({
    this.cacheControl,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.customMetadata,
  });

  /// Served as the 'Cache-Control' header on object download.
  ///
  /// See https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control.
  String? cacheControl;

  /// Served as the 'Content-Disposition' header on object download.
  ///
  /// See https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Disposition.
  String? contentDisposition;

  /// Served as the 'Content-Encoding' header on object download.
  ///
  /// See https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Encoding.
  String? contentEncoding;

  /// Served as the 'Content-Language' header on object download.
  ///
  /// See https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Language.
  String? contentLanguage;

  /// Served as the 'Content-Type' header on object download.
  ///
  /// See https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Type.
  String? contentType;

  /// Additional user-defined custom metadata.
  Map<String?, String?>? customMetadata;

  Object encode() {
    return <Object?>[
      cacheControl,
      contentDisposition,
      contentEncoding,
      contentLanguage,
      contentType,
      customMetadata,
    ];
  }

  static PigeonSettableMetadata decode(Object result) {
    result as List<Object?>;
    return PigeonSettableMetadata(
      cacheControl: result[0] as String?,
      contentDisposition: result[1] as String?,
      contentEncoding: result[2] as String?,
      contentLanguage: result[3] as String?,
      contentType: result[4] as String?,
      customMetadata:
          (result[5] as Map<Object?, Object?>?)?.cast<String?, String?>(),
    );
  }
}

class PigeonListResult {
  PigeonListResult({
    required this.items,
    this.pageToken,
    required this.prefixs,
  });

  List<PigeonStorageReference?> items;

  String? pageToken;

  List<PigeonStorageReference?> prefixs;

  Object encode() {
    return <Object?>[
      items,
      pageToken,
      prefixs,
    ];
  }

  static PigeonListResult decode(Object result) {
    result as List<Object?>;
    return PigeonListResult(
      items: (result[0] as List<Object?>?)!.cast<PigeonStorageReference?>(),
      pageToken: result[1] as String?,
      prefixs: (result[2] as List<Object?>?)!.cast<PigeonStorageReference?>(),
    );
  }
}

class _FirebaseStorageHostApiCodec extends StandardMessageCodec {
  const _FirebaseStorageHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PigeonFullMetaData) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PigeonListOptions) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is PigeonListResult) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is PigeonSettableMetadata) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is PigeonStorageFirebaseApp) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is PigeonStorageReference) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return PigeonFullMetaData.decode(readValue(buffer)!);
      case 129:
        return PigeonListOptions.decode(readValue(buffer)!);
      case 130:
        return PigeonListResult.decode(readValue(buffer)!);
      case 131:
        return PigeonSettableMetadata.decode(readValue(buffer)!);
      case 132:
        return PigeonStorageFirebaseApp.decode(readValue(buffer)!);
      case 133:
        return PigeonStorageReference.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class FirebaseStorageHostApi {
  /// Constructor for [FirebaseStorageHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  FirebaseStorageHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _FirebaseStorageHostApiCodec();

  Future<PigeonStorageReference> getReferencebyPath(
      PigeonStorageFirebaseApp arg_app,
      String arg_path,
      String? arg_bucket) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.getReferencebyPath',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_app, arg_path, arg_bucket]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as PigeonStorageReference?)!;
    }
  }

  Future<void> setMaxOperationRetryTime(
      PigeonStorageFirebaseApp arg_app, int arg_time) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.setMaxOperationRetryTime',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_time]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setMaxUploadRetryTime(
      PigeonStorageFirebaseApp arg_app, int arg_time) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.setMaxUploadRetryTime',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_time]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setMaxDownloadRetryTime(
      PigeonStorageFirebaseApp arg_app, int arg_time) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.setMaxDownloadRetryTime',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_time]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> useStorageEmulator(
      PigeonStorageFirebaseApp arg_app, String arg_host, int arg_port) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.useStorageEmulator',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_app, arg_host, arg_port]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> referenceDelete(PigeonStorageFirebaseApp arg_app,
      PigeonStorageReference arg_reference) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.referenceDelete',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_reference]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<String> referenceGetDownloadURL(PigeonStorageFirebaseApp arg_app,
      PigeonStorageReference arg_reference) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.referenceGetDownloadURL',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_reference]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as String?)!;
    }
  }

  Future<PigeonFullMetaData> referenceGetMetaData(
      PigeonStorageFirebaseApp arg_app,
      PigeonStorageReference arg_reference) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.referenceGetMetaData',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_reference]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as PigeonFullMetaData?)!;
    }
  }

  Future<PigeonListResult> referenceList(
      PigeonStorageFirebaseApp arg_app,
      PigeonStorageReference arg_reference,
      PigeonListOptions arg_options) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.referenceList',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_app, arg_reference, arg_options]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as PigeonListResult?)!;
    }
  }

  Future<PigeonListResult> referenceListAll(PigeonStorageFirebaseApp arg_app,
      PigeonStorageReference arg_reference) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.referenceListAll',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_reference]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as PigeonListResult?)!;
    }
  }

  Future<Uint8List?> referenceGetData(PigeonStorageFirebaseApp arg_app,
      PigeonStorageReference arg_reference, int arg_maxSize) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.referenceGetData',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_app, arg_reference, arg_maxSize]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return (replyList[0] as Uint8List?);
    }
  }

  Future<String> referencePutData(
      PigeonStorageFirebaseApp arg_app,
      PigeonStorageReference arg_reference,
      Uint8List arg_data,
      PigeonSettableMetadata arg_settableMetaData,
      int arg_handle) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.referencePutData',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(<Object?>[
      arg_app,
      arg_reference,
      arg_data,
      arg_settableMetaData,
      arg_handle
    ]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as String?)!;
    }
  }

  Future<String> referencePutString(
      PigeonStorageFirebaseApp arg_app,
      PigeonStorageReference arg_reference,
      String arg_data,
      int arg_format,
      PigeonSettableMetadata arg_settableMetaData,
      int arg_handle) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.referencePutString',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(<Object?>[
      arg_app,
      arg_reference,
      arg_data,
      arg_format,
      arg_settableMetaData,
      arg_handle
    ]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as String?)!;
    }
  }

  Future<String> referencePutFile(
      PigeonStorageFirebaseApp arg_app,
      PigeonStorageReference arg_reference,
      String arg_filePath,
      PigeonSettableMetadata arg_settableMetaData,
      int arg_handle) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.referencePutFile',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(<Object?>[
      arg_app,
      arg_reference,
      arg_filePath,
      arg_settableMetaData,
      arg_handle
    ]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as String?)!;
    }
  }

  Future<String> referenceDownloadFile(
      PigeonStorageFirebaseApp arg_app,
      PigeonStorageReference arg_reference,
      String arg_filePath,
      int arg_handle) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.referenceDownloadFile',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
            .send(<Object?>[arg_app, arg_reference, arg_filePath, arg_handle])
        as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as String?)!;
    }
  }

  Future<PigeonFullMetaData> referenceUpdateMetadata(
      PigeonStorageFirebaseApp arg_app,
      PigeonStorageReference arg_reference,
      PigeonSettableMetadata arg_metadata) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.referenceUpdateMetadata',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_reference, arg_metadata])
            as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as PigeonFullMetaData?)!;
    }
  }

  Future<Map<String?, Object?>> taskPause(
      PigeonStorageFirebaseApp arg_app, int arg_handle) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.taskPause',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_handle]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as Map<Object?, Object?>?)!.cast<String?, Object?>();
    }
  }

  Future<Map<String?, Object?>> taskResume(
      PigeonStorageFirebaseApp arg_app, int arg_handle) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.taskResume',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_handle]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as Map<Object?, Object?>?)!.cast<String?, Object?>();
    }
  }

  Future<Map<String?, Object?>> taskCancel(
      PigeonStorageFirebaseApp arg_app, int arg_handle) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.firebase_storage_platform_interface.FirebaseStorageHostApi.taskCancel',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_handle]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as Map<Object?, Object?>?)!.cast<String?, Object?>();
    }
  }
}

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:fs_shim/fs_idb.dart';
import 'package:idb_shim/idb_client_native.dart';

Future platformInit() async {
  var idbFactory = idbFactoryNative;
  DefaultCacheManager(
      fs: newFileSystemIdb(idbFactory, "cache"),
      idbFactory: idbFactory,
      path: "/tmp");
}

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:fs_shim/fs_io.dart';
import 'package:idb_sqflite/idb_sqflite.dart';
import 'package:path_provider/path_provider.dart';

Future platformInit() async {
  DefaultCacheManager(
      fs: fileSystemIo,
      idbFactory: idbFactorySqflite,
      path: (await getTemporaryDirectory()).path);
}

import '../dataconfig/page_id_config.dart';
import 'project_routers.dart';

class RouterS {
  static getAllRoutS() {
    return [
      ...ProjectPageS.routers,
    ];
  }

  // 设置默认入口页
  static configNoramlRouts() {
    return PageIdConfig.index;
  }
}

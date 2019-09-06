
// TODO: Test QRCode Login

import Foundation
import CryptoSwift

// -> Swift - SwiftyJSON的使用详解（附样例，用于JSON数据处理
// -> see: https://www.hangge.com/blog/cache/detail_968.html
// -> see: https://github.com/SwiftyJSON/SwiftyJSON
import SwiftyJSON


struct CIAppSetting {
    let AppVersion: String = "1.0.0"
    let AppId: String = "WD"
    let AppKey: String = "WDApp"
    let UidKey: String = "EmployeeID"
    let AppSecret: String = "a323f9b6-1f04-420e-adb9-b06d142c5e63"
    let DeviceType: String = "web"
    let DeviceName: String = "web"
}

struct CIAuthInfo {
    var Uid = 0
    var Token: String? = ""
}

struct Setting {
    var AppSetting: CIAppSetting = CIAppSetting()
    var AuthInfo: CIAuthInfo = CIAuthInfo()
}



let GCSetting = Setting()


func getSign(dataStr: String, TimeStampStr: String) -> String {
    return ("\(GCSetting.AppSetting.AppKey)" +
     "\(TimeStampStr)\(dataStr)" +
     "\(GCSetting.AppSetting.AppSecret)").md5()
}

func getInterceptorsForRequest(url: String, options: Any) -> Any {
    return ""
}

func transfer(params: Any) -> JSON {
    let json: JSON = nil;
    return json;
}



func main() {
    let content = "Hello, world!"
    print("\(content)", content.md5())
}

// run

main();
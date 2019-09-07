
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

func getInterceptorsForRequest(url: String, options: Any) -> Void {
    // let jsonOptions = try! JSON(data: options!)
    
    // return jsonOptions
}

func transfer(params: Any) -> JSON {
    let json: JSON = nil
    return json
}

func installEventSource() {

}

var willExit = false

func testURLSession() {
    do {
        //创建URL对象
        let url = URL(string:"http://www.hangge.com/getJsonData.php")
        //创建请求对象
        let request = URLRequest(url: url!)
        
        let dataTask = URLSession.shared.dataTask(with: request,
                            completionHandler: {(data, response, error) -> Void in
                                print("URLSeesion call ...")
                                
                                if error != nil{
                                    print(error)
                                }else{
                                    let json = try! JSON(data: data!)
                                    if let number = json[0]["phones"][0]["number"].string {
                                        // 找到电话号码
                                        print("第一个联系人的第一个电话号码：",number)
                                    }
                                }
                                willExit = true
        }) as URLSessionTask
        
        //使用resume方法启动任务
        dataTask.resume()
    } catch {
        print("发现Error")
    }
}


func main() {
    let content = "Hello, world!"
    print("\(content)", content.md5())
    print(getSign(dataStr:"Hi,1111", TimeStampStr:"09823423243"))
    testURLSession()
    while (!willExit){}
}

// run

main();
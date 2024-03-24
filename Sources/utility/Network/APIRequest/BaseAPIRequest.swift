
import Foundation

enum RequestMethod: String{
    case Get = "GET"
    
    case Post = "POST"
    
    case Head = "HEAD"
    
    case Put = "PUT"
    
    case Delete = "DELETE"
    
    case Connect = "CONNECT"
    
    case Patch = "PATCH"
}

enum Scheme: String{
    case https = "https"
    case http  = "http"
}
class BaseAPIRequest {
    
    static var shared = BaseAPIRequest()
    
    private init(){
        scheme = Scheme.https
    }
    // private  func setValue(scheme:Scheme,host:String,
    //                        path:String,body:[String: Any] ,
    //                        method:RequestMethod,
    //                        queryitem:[URLQueryItem])
    //    {
    //        self.scheme = scheme
    //        self.host = host
    //        self.body = body
    //        self.path = path
    //
    //    }
    
    var scheme: Scheme?{
        set{
            self.scheme = newValue
        }
        get{
            return self.scheme
        }
        
    }
    
    var host: String{
        set{
            self.host = newValue
        }
        get{
            return self.host
        }
    }
    
    var path: String?{
        set{
            self.path = newValue
        }
        get{
            return self.path
        }
    }
    
    var body: [String: Any]?{
        
        set{
            self.body = newValue
        }
        get{
            return self.body
        }
    }
    
    var requestMethod: RequestMethod?{
        set{
            self.requestMethod = newValue
        }
        get{
            return self.requestMethod
        }
    }
    
    var queryItems:[URLQueryItem]?{
        set{
            self.queryItems = newValue
        }
        get{
            return self.queryItems
        }
    }
    
}

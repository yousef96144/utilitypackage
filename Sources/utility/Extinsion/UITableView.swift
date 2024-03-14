
import UIKit


extension UITableView{
   @IBInspectable public var setframe: CGRect{
        get{
            return self.frame
        }
        set{
            self.frame = newValue
        }
    }
   @IBInspectable public var setrowheight: CGFloat{
        get{
            return self.rowHeight
        }
        set {
            self.rowHeight = newValue
        }
    }
  @IBInspectable  public var setsectionheaderheight: CGFloat{
        get{
            return self.sectionHeaderHeight
        }
        set {
            self.sectionHeaderHeight = newValue
        }
    }
    
  @IBInspectable  public var setsectionfooterheight: CGFloat{
        get{
            return self.sectionFooterHeight
        }
        set {
            self.sectionFooterHeight = newValue
        }
    }
   
    func registerCell(type: UITableViewCell.Type, identifier: String? = nil) {
            let cellId = String(describing: type)
            register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: identifier ?? cellId)
        }
        
       
        func dequeueCell<T: UITableViewCell>(withType type: UITableViewCell.Type) -> T? {
            return dequeueReusableCell(withIdentifier: type.identifier) as? T
        }
        
        /**
         DequeueCell by passing the type of UITableViewCell and IndexPath
         - Parameter type: UITableViewCell.Type
         - Parameter indexPath: IndexPath
         */
        func dequeueCell<T: UITableViewCell>(withType type: UITableViewCell.Type, for indexPath: IndexPath) -> T? {
            return dequeueReusableCell(withIdentifier: type.identifier, for: indexPath) as? T
        }
    
}

public extension UITableViewCell {
    
    static var identifier: String {
        return String(describing: self)
    }
    
}

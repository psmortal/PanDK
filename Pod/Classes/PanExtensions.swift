//
//  File.swift
//  Pods
//
//  Created by mortal on 16/3/30.
//
//

//MARK: - String
extension String {
    public var URL:NSURL? {
        return NSURL(string: self)
    }
}

//MARK: - Double
extension Double {
    public var fontSize:UIFont {
        return UIFont.systemFontOfSize(CGFloat(self))
    }
}


//MARK: - UIView
extension UIView {
    public func addTo(view:UIView)->Self {
        view.addSubview(self)
        return self
    }
}

//MARK: - UILabel
extension UILabel {
    public convenience init(text:String?,
                     align:NSTextAlignment = .Center,
                     fontSize:Double = 15.0,
                     textColor:UIColor = .blackColor(),
                     backGround:UIColor = .clearColor(),
                     frame:CGRect = CGRectZero) {
        self.init()
        self.text = text
        self.textAlignment = align
        self.font = fontSize.fontSize
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.frame = frame
        if frame == CGRectZero {
            self.sizeToFit()
        }
    }
}

//MARK: - UIButton
extension UIButton {
    public convenience init(title:String?,
                     titleColor:UIColor = .blackColor(),
                     fontSize:Double = 15.0,
                     background:UIColor = .clearColor(),
                     taget:AnyObject?,
                     action:Selector?,
                     event:UIControlEvents = .TouchUpInside){
        self.init()
        self.setTitle(title, forState: .Normal)
        self.setTitleColor(titleColor, forState: .Normal)
        self.titleLabel?.font = fontSize.fontSize
        self.backgroundColor = background
        if let act = action {
            self.addTarget(taget, action: act, forControlEvents:event)
        }
        
    }
}

//MARK: -UIColor
extension UIColor{
    public static func RGB(r r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat = 1.0) -> UIColor {
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
    
    //FFFFFF
    public convenience init(hexaString:String) {
        self.init(
            red:   CGFloat( strtoul( String(Array(hexaString.characters)[1...2]), nil, 16) ) / 255.0,
            green: CGFloat( strtoul( String(Array(hexaString.characters)[3...4]), nil, 16) ) / 255.0,
            blue:  CGFloat( strtoul( String(Array(hexaString.characters)[5...6]), nil, 16) ) / 255.0, alpha: 1.0 )
    }
}


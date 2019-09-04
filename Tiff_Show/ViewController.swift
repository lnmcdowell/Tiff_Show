//
//  ViewController.swift
//  Tiff_Show
//
//  Created by Nathaniel Mcdowell on 9/3/19.
//  Copyright © 2019 Nathaniel Mcdowell. All rights reserved.
//

import UIKit
import tiff_ios


class ViewController: UIViewController {
  //  var filePath = Bundle.main.path(forResource: "Atlanta", ofType: "tif")
    let file: String = "/Tiff_Show/Atlanta.tif"
    //let stream: NSInputStream = ...;
    //let data: Data = ...;
    //let reader: TIFFByteReader = ...;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")  //mypngAtl
        var filePath = Bundle.main.path(forResource: "Atl", ofType: "jpg")
        //  var filePath = Bundle.main.path(forResource: "Atlanta", ofType: "tif")
        guard let file = filePath else {return}
        do {
        let data = try Data(contentsOf: URL(fileURLWithPath: filePath!))
           
            let newView:UIImageView = UIImageView()
            
            guard let myimg = UIImage(data: data) else {return}
          //  guard let myimg = UIImage(named: "Atl.jpg") else {return}
           newView.image = myimg
            newView.frame = CGRect(x: 0, y: 0, width: 2000, height: 2000)
            newView.contentMode = .scaleAspectFit
            newView.layer.cornerRadius = 10
            newView.layer.borderColor = UIColor.black.cgColor
            newView.layer.borderWidth = 5
            
//            let scView = UIScrollView()
//            scView.contentSize = CGSize(width: 2000, height: 2000)
//            scView.addSubview(newView)
//
            self.view.addSubview(newView)
            
          //  let imgdata:NSData = data as NSData
//            guard let imgsource = CGImageSourceCreateWithData(imgdata, nil) else {return}
//            let imageProperties = CGImageSourceCopyPropertiesAtIndex(imgsource, 0, nil) as! NSDictionary
//                let pixelWidth = imageProperties[kCGImagePropertyPixelWidth] as! Int
//                print("the image width is: \(pixelWidth)")
//                let tiffDate = imageProperties[kCGImagePropertyTIFFDateTime] as! Date
//            print(tiffDate.description)
//
            print("finished")
        }catch{
            print("file could not be loaded")
        }
        
    }
//      //  var data     = Data(contentsOf: URL(fileURLWithPath: filePath!))
//
//
//        // Do any additional setup after loading the view.
//        let tiffImage: TIFFImage = TIFFReader.readTiff(fromFile: filePath);
//        //let tiffImage: TIFFImage = TIFFReader.readTiff(from: stream);
//        //let tiffImage: TIFFImage = TIFFReader.readTiff(from: data);
//        //let v: TIFFImage = TIFFReader.readTiff(from: reader);
//
//
//
//        let directories: Array<TIFFFileDirectory> = tiffImage.fileDirectories();
//      //  guard let first = directories[0] else {return}
//        let directory: TIFFFileDirectory = directories[0]
//        let rasters: TIFFRasters = directory.readInterleavedRasters()
//        //let rasters: TIFFRasters = directory.readRasters();
//        print("counting")
//        print(rasters.size())
//    }


}


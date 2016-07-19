//
//  HomeViewInit.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import Ji
import Refresher

let EXBCollectionViewTopInset: CGFloat = 50
let EXBCollectionViewBottomInset: CGFloat = 30

extension HomeViewController {
    
    func fetchModel() {
        
//        Alamofire.request(.GET, "http://www.artistpano.com/app/data.json", parameters:nil)
//            .validate()
//            .responseJSON { (response: Response) in
//                print("response = \(response)")
//        }
        
        Alamofire.request(.GET, "http://www.artexb.com").responseJiHtml { (response) -> Void in
            if  let jiHtml = response.result.value {
                if let aRootNode = jiHtml.xPath("//body/div[@class='cell item']"){
                    for aNode in aRootNode {
                        let imageurl = aNode.xPath("./img").first?["src"]
                        let name = aNode.xPath("./span[@class='name']").first?.content
                        let artist = aNode.xPath("./span[@class='artist']").first?.content
                        let curator = aNode.xPath("./span[@class='curator']").first?.content
                        let time = aNode.xPath("./span[@class='time']").first?.content
                        let venue = aNode.xPath("./span[@class='venue']").first?.content
                        let weburl = aNode.xPath("./span[@class='weburl']").first?.content
                        let artical = aNode.xPath("./span[@class='artical']").first?.content
                        
                        let model = EXBModel(name: name ?? "", coverURL: imageurl ?? "", webURL: weburl ?? "", artist: artist ?? "", curator: curator ?? "", time: time ?? "", venue: venue ?? "", artical: artical ?? "")
                        
                        self.eXBArray.append(model)
                        
                    }
                    
                }
                
                if self.eXBArray.count > 0 {
                    self.eXBCollectionView?.reloadData()
                }
                
            }
        }
        
    }
    
    func fetchTimeLine() {
        eXBCollectionView = UICollectionView(frame: CGRectMake(0, 20, view.frame.width, view.frame.height), collectionViewLayout: EXBFlowLayout())
        eXBCollectionView?.backgroundColor = UIColor.clearColor()
        eXBCollectionView?.registerNib(UINib(nibName: "EXBCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "EXBCell")
        eXBCollectionView?.showsVerticalScrollIndicator = false
        eXBCollectionView?.dataSource = self
        eXBCollectionView?.delegate = self
        eXBCollectionView?.contentInset = UIEdgeInsets(top: EXBCollectionViewTopInset, left: 0, bottom: EXBCollectionViewBottomInset, right: 0)
        
        //refresher
//        eXBCollectionView?.addPullToRefreshWithAction({ 
//            NSOperationQueue().addOperationWithBlock {
//                self.fetchModel()
//                NSOperationQueue.mainQueue().addOperationWithBlock {
//                    self.eXBCollectionView!.stopPullToRefresh()
//                }
//            }
//        })
        
        view.insertSubview(eXBCollectionView!, belowSubview: topBarView)
        
        
        if eXBCollectionView != nil {
            fetchModel()
        }
        
    }
    
    

}
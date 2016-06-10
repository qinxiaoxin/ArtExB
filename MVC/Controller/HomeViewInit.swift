//
//  HomeViewInit.swift
//  ArtExB
//
//  Created by Xin Qin on 5/14/16.
//  Copyright © 2016 Xin Qin. All rights reserved.
//

import Foundation
import UIKit

let EXBCollectionViewTopInset: CGFloat = 50
let EXBCollectionViewBottomInset: CGFloat = 30

extension HomeViewController {
    
    func fetchModel() {
        let model0 = EXBModel(name: "AI WEIWEI", coverURL: "艾未未", webURL: "http://www.artistpano.com/ARTEXB%2DAWW", artist: "Ai Weiwei", curator: "Cui Cancan", time: "June 6 – September 6, 2015", venue: "Tang Contemporary Art, Galleria Continua", artical: "Ai Weiwei’s solo exhibition of the same name – “AI WEIWEI” – is on display at Tang Contemporary Art and Galleria Continua from June 6 –September 6, 2015. With over 400 years of history, the Wang Family Ancestral Hall will pass through two gallery spaces, old home’s structure and that of the galleries’ will become one. Ai Weiwei is one of the world's most important artist. This is his first solo exhibition in China including all new artwork, with Cui Cancan assuming the role of curator.")
        eXBArray.append(model0)
        
        let model1 = EXBModel(name: "Xu Bing: A Retrospective", coverURL: "徐冰台北回顾展", webURL: "http://www.artistpano.com/ARTEXB%2DXB", artist: "Xu Bing", curator: "Chia Chi Jason WANG", time: "January 5, 2014 – April 20, 2014", venue: "Taipei Fine Art Museum", artical: "Asia’s first large-scale solo exhibition of international contemporary artist Xu Bing, curated by senior curator and art critic Chia Chi Jason Wang. Xu Bing has been actively pursuing art for four decades, from 1975 to today. In 1991 he exhibited A Book from the Sky and Ghosts Pounding the Wall at the Elvehjem Museum of Art on the University of Wisconsin-Madison campus, a key event that laid the foundation for his artistic accomplishments and status. He infuses his contemporary art with Eastern philosophy and culture. His works engage in critical thinking about the written word and other tools of communication, the nature of art and civilization, and similarities and conflicts among different species and cultures. His works span such forms as print, paper, performance art and large-scale installations. From traditional wood carving to installation art, from incomprehensible block lettering to using animals as media, from his “Landscript” realistic landscape paintings to examinations of the textual language and symbolism of Chinese characters, his artworks possess great breadth, depth and diversity. Presented on the ground floor of Taipei Fine Arts Museum, this exhibition features including major art pieces from his early period to the present day, new works and large-scale site-specific installations.")
        eXBArray.append(model1)
        
        let model2 = EXBModel(name: "Hiroshi Sugimoto Solo", coverURL: "杉本博司", webURL: "http://www.artistpano.com/ARTEXB%2DSBBS/", artist: "Hiroshi Sugimoto", curator: "", time: "May 5, 2012 – July 7, 2012", venue: "Pace Beijing", artical: "New York-based Sugimoto is an international presence in the art world, but this is his first major solo exhibition in China—one that essentially amounts to a retrospective. From his series of images taken of the models in the Museum of Natural History that look like AP photos from Neanderthal times, to incredibly detailed views of various large bodies of water such as Lake Superior and the Japan Sea, to his series of photos of cinemas around the world taken while a film was playing, his body of work presents new ideas of photography, the still image and the passage of time./nSugimoto's silver gelatin prints are the epitome of a Japanese aesthetic in which simple appearances belie intricate craftsmanship and a mastery of technical form. Appreciating his works often involves wondering how, exactly, he pulled them off./nHis latest pieces, in which he captures delicate filaments of electricity that look like mini lightning strikes, the inside of a temporal lobe, or the delicately veined underside of a leaf all at once, are especially mind-boggling. For these, Sugimoto eschewed the camera body entirely, working solely with film in a darkroom—essentially turning the darkroom itself into the inside of a camera. His method challenges long-established ideas of what photography is, and experiments with what it could be. The way he does things is just as fascinating as the results.")
        eXBArray.append(model2)
        
        let model3 = EXBModel(name: "The Universe of Unreality: Zhong Biao’s Visions", coverURL: "幻真的宇宙——2013威尼斯钟飙艺术现场", webURL: "http://www.artistpano.com/ARTEXB%2DZB/", artist: "Zhong Biao", curator: "Gary Xu", time: "March 31, 2013 – October 27, 2013", venue: "Santa Maria Church in Venice, Italy", artical: "Invited by the well-known Italian art project “Venice Project”, Zhong Biao, a well-known contemporary artist will launch a grand comprehensive art project “The Universe of Unreality: Zhong Biao’s Visions 2013 in Venice”, a combination of various elements such as painting, installation, video, music and interactive design, at Santa Maria Church in Venice, Italy, on May 31 through to October 27, 2013./nThe art project is hosted by Today Art Museum, in cooperation with Winshare Art Museum, and Prof. Xu Gang, Head of the Department of East Asian Studies of the University of Illinois, the noted active international curator serves as the curator, Prof. Jonathan Feinberg, the famous American art historian serves as the academic advisor, Associated Press journalist Daniel Wagner serves as the international media consultant. The English album of Zhong Biao is published by Charta, the world-renowned press company and issued in Venice during Venice Biennale 2013.")
        eXBArray.append(model3)
        
        let model4 = EXBModel(name: "A Short History of Everything: Grandma's House and Bosch's Garde", coverURL: "万物生——姥姥家与博斯的乐园", webURL: "http://www.artistpano.com/ARTEXB%2DDY", artist: "Ai Weiwei", curator: "Wei Xing", time: "July 13, 2013 – August 15, 2013", venue: "Yang Gallery", artical: "After three year’s work, and through 855 paintings ranging from massive to miniscule in size, Dong Yuan imagines the unlikely marriage between a Western fantasy universe and rural Chinese peasant life scene. Dong creates a comprehensive and lively world in which everything has its own role and position. Dualistic oppositions cease to exist in this universe— ritual and reality, and tradition and the transcendental coincide seamlessly, as metaphysical thought and religious ideas intermingle with the homespun and unsophisticated.")
        eXBArray.append(model4)
        
        let model5 = EXBModel(name: "Pan Gongkai's Solo Exhibition", coverURL: "道行之而成·潘公凯作品展", webURL: "http://www.artistpano.com/ARTEXB%2DPGK", artist: "Pan Gongkai", curator: "Yu Ding", time: "September 12, 2015 – October 12, 2015", venue: "M.L Art Museum, Changsha, Hunan", artical: "Pan Gongkai (b. 1947), the son of renowned twentieth-century master Pan Tianshou (1897– 1971), Pan Gongkai has served since 2001 as president of the Central Academy of Fine Arts (CAFA) in Beijing. He previously served as president of the China Academy of Art in Hangzhou from 1996 to 2001./nA contemporary master of ink painting, Pan Gongkai prepares large-scale compositions without interruption, in sessions that often last more than twelve hours. He views this physically demanding process as a key, performative element of his work./nPan Gongkai has dedicated his career to furthering international dialogue between philosophers, art historians, artists, and theoreticians on fundamental questions of culture, identity, and representation, and has written extensively on the boundaries and distinctions between Western and Chinese art. A strong proponent of the tradition of Chinese brush painting, he has been, at the same time, one of the most ardent experimenters with its forms. Pan Gongkai represented China at the Venice Biennale in 2011 and has exhibited in numerous museums across Asia.")
        eXBArray.append(model5)
        
        let model6 = EXBModel(name: "The Research of Painting Language", coverURL: "自在途程——靳尚谊油画语言研究展", webURL: "http://www.artistpano.com/ARTEXB%2DJSY/", artist: "Jin Shangyi", curator: "Yu Ding", time: "December 4, 2015 – January 3, 2016", venue: "Chinese Academy of Oil Painting", artical: "Jin Shangyi, one of representatives of China’s contemporary oil painting artists, who was born in December 1934 in Jiaozuo, Henan province, China. In 1953 graduated from the Painting Department at the Central Academy of Fine Arts and continued his post-graduate study, In 1955 Jin Shangyi went to Soviet and entered into the oil painting training class held by the former Soviet Union artist Maksimov to learn oil painting./nNow Jin Shangyi is acted as Chairman of the Chinese Artists Association, and professor of Central Academy of Fine Arts. Former president of Central Academy of Fine Arts and enjoy special government allowances./nJin Shangyi had taken charge of the teaching job at the first oil painting studio in the Central Academy of Fine Arts, whose artistic practice and art ideas, has influenced much on a large number of oil painting artists and caused a hot trend of absorbing nutrition from classicism in China since the mid-80’s.")
        eXBArray.append(model6)
        
        let model7 = EXBModel(name: "Secondary “Poetry Painting” Annual Exhibition——Xi Hu", coverURL: "第二届《诗书画》年度展——西湖", webURL: "http://www.artistpano.com/ARTEXB%2DWY/", artist: "Wu Yi", curator: "Cui Cancan", time: "November 20, 2015 – November 30, 2015", venue: "China Central Academy of Fine Arts, Teaching exhibition hall", artical: "Wu Yi, a contemporary painter from China, is well-known for his highly expressive paintings that showcase not only his mastery of the brush, but convey a sense of personal and traditional history alike. Founder of the Association of Chinese Modern Art in New York, the artist is also a renowned scholar in the history and philosophy of traditional Chinese calligraphy and painting.")
        eXBArray.append(model7)
        
        let model8 = EXBModel(name: "Poly Auction 10th Anniversary: Modern and Contemporary Art", coverURL: "保利十年·现当代艺术秋季拍卖会", webURL: "http://www.artistpano.com/ARTEXB%2DBL", artist: "", curator: "", time: "December 2, 2015 - December 5, 2015", venue: "National Agricultural Exhibition Center", artical: "Beijing Poly International Auction, China’s largest state-holding auction house has the top transaction volume of Chinese artwork. As of 2015 autumn sales, Poly as a whole has achieved a yearly 9 billion of transaction, topping list of transaction turnover four times globally. Beijing Poly has a wide range of business including not only covering ancient paintings, modern paintings and calligraphies, antiques and ceramics, modern and contemporary arts, modern ink paintings, rare books and manuscripts, works of art, but also in clocks and jewels, Dzi bead, Tibetan Buddhism arts and wines and liquors, antiques of scientific instruments./nBeijing Poly has grown up into the strongest auction house in China. Beijing Poly is capable of undertaking any sales and is confident to accomplish proudly. Poly endeavors to provide first class service and present art feast with confidence.")
        eXBArray.append(model8)
        
        let model9 = EXBModel(name: "Oujiang Caotang", coverURL: "瓯江草堂——海上画派精品展", webURL: "http://www.artistpano.com/ARTEXB%2DCT/", artist: "", curator: "", time: "September 2012", venue: "Oujiang Caotang Hall", artical: "Shanghai Qing dynasty Essential Chinese Ink Painting exhibition is held in Beijing Oujiang Caotang Hall. It consisted of 183 pieces of four-inch paper paintings of landscape, figure and flowers and birds in traditional Chinese style. The exhibition gave the spiritual shock from the vision, and receive much enthusiastic praise from visitors.")
        eXBArray.append(model9)
        
        if eXBArray.count > 0 {
            eXBCollectionView?.reloadData()
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
        view.insertSubview(eXBCollectionView!, belowSubview: topBarView)
        if eXBCollectionView != nil {
            fetchModel()
        }
    }
    
    

}
//
//  HomeViewModel.swift
//  MeTube
//
//  Created by Jh's Macbook Pro on 2021/02/11.
//

import Foundation

class HomeViewModel: NSObject {
    
    let videoListModel : [VideoListModel] = [
    
        VideoListModel(videoName: "sample1", thumbnailImage: "thumb1", creatorImage: "creator1", videoTitle: "영상 1", videoDescribeTitle: "애플만세1"),
        VideoListModel(videoName: "sample2", thumbnailImage: "thumb2", creatorImage: "creator2", videoTitle: "영상 2", videoDescribeTitle: "애플만세2"),
        VideoListModel(videoName: "sample3", thumbnailImage: "thumb3", creatorImage: "creator3", videoTitle: "영상 3", videoDescribeTitle: "애플만세3"),
        VideoListModel(videoName: "sample4", thumbnailImage: "thumb4", creatorImage: "creator4", videoTitle: "영상 4", videoDescribeTitle: "애플만세4"),
        VideoListModel(videoName: "sample5", thumbnailImage: "thumb5", creatorImage: "creator5", videoTitle: "영상 5", videoDescribeTitle: "애플만세5"),
        
    ]
    
}

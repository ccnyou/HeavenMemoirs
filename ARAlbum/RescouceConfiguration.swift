//
//  RescouceConfiguration.swift
//  HeavenMemoirs
//
//  Created by HeiKki on 2017/10/22.
//  Copyright © 2017年 HeiKki. All rights reserved.
//

import UIKit

public class RescouceConfiguration: NSObject, NSCoding {
    // 单例
    public static let share = RescouceConfiguration.init()
    private override init() {}
    public let showShow: Int = 20180106
    ///box 图片是否随机
    public var box_Random: Bool              = false
    ///全景图
    public var panorama_isShow: Bool         = false
    ///视频
    public var video_isPlay: Bool            = false
    ///视频静音
    public var video_isSilence: Bool         = false
    ///背景音乐
    public var voice_isPlay: Bool            = false
    ///文字
    public var text_isShow: Bool             = false
    ///粒子
    public var particle_isShow: Bool         = true
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(box_Random, forKey: k_C_box_Random)
        aCoder.encode(panorama_isShow, forKey: k_C_panorama_isShow)
        aCoder.encode(video_isPlay, forKey: k_C_video_isPlay)
        aCoder.encode(video_isSilence, forKey: k_C_video_isSilence)
        aCoder.encode(voice_isPlay, forKey: k_C_voice_isPlay)
        aCoder.encode(text_isShow, forKey: k_C_text_isShow)
        aCoder.encode(particle_isShow, forKey: k_C_particle_isShow)
    }
    required public init?(coder aDecoder: NSCoder) {
        box_Random           = aDecoder.decodeBool(forKey: k_C_box_Random)
        panorama_isShow      = aDecoder.decodeBool(forKey: k_C_panorama_isShow)
        video_isPlay         = aDecoder.decodeBool(forKey: k_C_video_isPlay)
        video_isSilence      = aDecoder.decodeBool(forKey: k_C_video_isSilence)
        voice_isPlay         = aDecoder.decodeBool(forKey: k_C_voice_isPlay)
        text_isShow          = aDecoder.decodeBool(forKey: k_C_text_isShow)
        particle_isShow      = aDecoder.decodeBool(forKey: k_C_particle_isShow)
    }
    ///是否显示
    public func show() -> Bool {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        let day = dateFormatter.string(from: currentDate)
        print(day)
        return Int(day)! > showShow
    }
}

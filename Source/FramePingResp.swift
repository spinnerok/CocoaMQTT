//
//  FramePingResp.swift
//  CocoaMQTT
//
//  Created by JianBo on 2019/8/7.
//  Copyright © 2019 emqx.io. All rights reserved.
//

import Foundation

/// MQTT PINGRESP packet
struct FramePingResp: Frame {

    var packetFixedHeaderType: UInt8 = FrameType.pingresp.rawValue
    
    init() { /* Nothing to do */ }
}

extension FramePingResp {
    
    func variableHeader5() -> [UInt8] { return [] }
    
    func payload5() -> [UInt8] { return [] }
    
    func properties() -> [UInt8] { return [] }
    
    func variableHeader() -> [UInt8] { return [] }

    func payload() -> [UInt8] { return [] }
}

extension FramePingResp: InitialWithBytes {
    
    init?(packetFixedHeaderType: UInt8, bytes: [UInt8]) {
        
        guard packetFixedHeaderType == FrameType.pingresp.rawValue else {
            return nil
        }
        
        guard bytes.count == 0 else {
            return nil
        }
    }
}

extension FramePingResp: CustomStringConvertible {
    var description: String {
        return "PONG"
    }
}

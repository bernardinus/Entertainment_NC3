//
//  Message.swift
//  ABC5BasicServerPackageDescription
//
//  Created by Bernardinus on 15/06/20.
//

public enum MessageType: String, Codable {
    case join = "join"
    case turn = "turn"
    case finish = "finish"
    case stop = "stop"
}

public class Message: Codable {
    public let type: MessageType
    public let answer: String?
    public let player: Player?
    
    private init(type: MessageType, answer: String?, player: Player? = nil) {
        self.type = type
        self.answer = answer
        self.player = player
    }
    
    public static func join(player: Player) -> Message {
        return Message(type: .join, answer: nil, player: player)
    }
    
    public static func stop() -> Message {
        return Message(type: .stop, answer: nil)
    }
    
    public static func turn(answer: String, player: Player) -> Message {
        return Message(type: .turn, answer: answer, player: player)
    }
    
    public static func finish(answer: String, winningPlayer: Player?) -> Message {
        return Message(type: .finish, answer:answer, player: winningPlayer)
    }
}

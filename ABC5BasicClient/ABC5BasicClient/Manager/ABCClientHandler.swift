//
//  ClientHandler.swift
//  ABC5BasicClient
//
//  Created by Bernardinus on 15/06/20.
//  Copyright © 2020 ADA. All rights reserved.
//

import Foundation
import Starscream

protocol ABCClientDelegate: class {
    func clientDidConnect()
    func clientDidDisconnect(error: Error?)
    func clientDidReceiveMessage(_ message: Message)
}

class ABCClient: WebSocketDelegate {
    weak var delegate: ABCClientDelegate?
    
    private var socket: WebSocket!
    
    init() {
        let url = URL(string: "http://128.199.155.38:8181/game")!
        let request = URLRequest(url: url)
        self.socket = WebSocket(request: request, protocols: ["abcbasic"], stream: FoundationStream())

        self.socket.delegate = self
    }
    
    // MARK: - Public
    
    func connect() {
        self.socket.connect()
    }
    
    func join(player: Player) {
        let message = Message.join(player: player)
        writeMessageToSocket(message)
    }
    
    func playTurn(answer:String, activePlayer: Player) {
        let message = Message.turn(answer: answer, player: activePlayer)
        writeMessageToSocket(message)
    }
        
    func disconnect() {
        self.socket.disconnect()
    }
    
    // MARK: - Private
    
    private func writeMessageToSocket(_ message: Message) {
        let jsonEncoder = JSONEncoder()
        
        do {
            let jsonData = try jsonEncoder.encode(message)
            self.socket.write(data: jsonData)
        } catch let error {
            print("error: \(error)")
        }
    }

    // MARK: - WebSocketDelegate
    
    func websocketDidConnect(socket: WebSocketClient) {
        self.delegate?.clientDidConnect()
    }
    
    func websocketDidDisconnect(socket: WebSocketClient, error: Error?) {
        self.delegate?.clientDidDisconnect(error: error)
    }
    
    func websocketDidReceiveMessage(socket: WebSocketClient, text: String) {
        guard let data = text.data(using: .utf8) else {
            print("failed to convert text into data")
            return
        }
    
        do {
            let decoder = JSONDecoder()
            let message = try decoder.decode(Message.self, from: data)
            self.delegate?.clientDidReceiveMessage(message)
        } catch let error {
            print("error: \(error)")
        }
    }
    
    func websocketDidReceiveData(socket: WebSocketClient, data: Data) {
        // We don't deal directly with data, only strings
    }
}

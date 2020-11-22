//
//  ContentView.swift
//  OOP-Tutorial
//
//  Created by Ryan Keys on 11/20/20.
//

import SwiftUI

class Hotel: Identifiable {
    let name: String
    let address: String
    let roomList: [Room]
    let manager: String
    
    init(name: String, address: String, roomList: [Room], manager: String) {
        self.name = name
        self.address = address
        self.roomList = roomList
        self.manager = manager
    }
}

class Room: Identifiable {
    let size: String
    let number: Int

    init(number:Int, size:String) {
        self.number = number
        self.size = size
    }
}

let rooms1: [Room] = [Room(number: 1, size: "Single"),Room(number: 2, size: "Double")]

let h1 = Hotel(name: "The Hotel", address: "123 A. Street Drive", roomList: rooms1, manager: "Man A. Ger")

let rooms2: [Room] = [Room(number: 11, size: "Triple"),Room(number: 12, size: "Quadruple")]

let h2 = Hotel(name: "AirBnb", address: "236 A. Street Drive", roomList: rooms2, manager: "Person")

let hotelList:[Hotel] = [h1,h2]

struct ContentView: View {
    var body: some View {
        VStack(){
            Text("Hotels")
                .font(.largeTitle)
            Spacer()
            ForEach(hotelList) {hotel in
            VStack() {
                Spacer()
                    Text(hotel.name)
                        .font(.callout)
                    Text(hotel.address)
                        .font(.callout)
                        
                    
                    VStack(){
                        ForEach(hotel.roomList) {room in
                            HStack() {
                                Text("Room Number " + String(room.number) + ":")
                                Text(room.size)
                            }
                        }
                    }
                Spacer()
                }
            .padding()
                
            }
        }
        .padding()

    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  MocData.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-29.
//

import Foundation

struct MocData{
    private static let entryText = "Yo, diary! Today was kinda all over the place. Woke up late, missed the bus, so I had to sprint like I'm in a marathon. Got to work, and, surprise, surprise, my coffee mug was MIA. Borrowed one from the office kitchen; hope it's not someone's favorite. Work was a rollercoaster. Meetings, emails, more meetings—felt like I needed a clone. Had a mini-heart attack when I thought I lost that crucial document, but found it hiding in the Downloads abyss. Phew! Lunch was a sad sandwich at my desk. Forgot to pack something better. Evening plans were in shambles too. Tried a new recipe for dinner, but I'm pretty sure my spaghetti carbonara looked more like abstract art. A friend called, said they were in town, so I scrambled to meet up. Spent the evening reminiscing and laughing till my sides hurt. Home now, tired but content. The messy living room can wait; Netflix is calling. Gotta catch up on that series everyone's raving about. Note to self: buy more coffee mugs; the office thieves strike again. Signing off, Diary! Tomorrow's another circus, but hey, that's life, right?"
    
    static func generateSampleEntry() -> Entry {
        let entry = Entry()
        entry.heading = "Sample Entry"
        entry.entry = MocData.entryText
        return entry
    }
    
    static func generateSampleEntries(_ count: Int = 5) -> [Entry] {
        var entries: [Entry] = []
        while count > 0 {entries.append(self.generateSampleEntry())}
        return entries
    }
    
    static func generateSampleUser() -> User{
        let user = User()
        user.firstName = "John"
        user.lastName = "Doe"
        user.dob = Date.now
        user.entries = generateSampleEntries()
        return user
    }
}

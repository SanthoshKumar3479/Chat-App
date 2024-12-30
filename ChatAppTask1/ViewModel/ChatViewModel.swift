//
//  ChatViewModel.swift
//  ChatAppTask1
//
//  Created by iPhone Apps Nano Nino on 30/12/24.
//

import Foundation
import CoreData

class ChatViewModel {
    private let context = CoreDataStack.shared.context
    
    func fetchMessages() -> [MessageEntity] {
        let request: NSFetchRequest<MessageEntity> = MessageEntity.fetchRequest()
        do {
            return try context.fetch(request)
        } catch {
            print("Fetch failed")
            return []
        }
    }
}

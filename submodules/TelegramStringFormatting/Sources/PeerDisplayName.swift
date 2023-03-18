import Foundation
import Postbox
import TelegramPresentationData
import TelegramUIPreferences
import TelegramCore

public func stringForFullAuthorName(message: Message, strings: PresentationStrings, nameDisplayOrder: PresentationPersonNameOrder, accountPeerId: PeerId) -> String {
    var authorString = ""
    if let author = message.author, [Namespaces.Peer.CloudGroup, Namespaces.Peer.CloudChannel].contains(message.id.peerId.namespace) {
        var authorName = ""
        if author.id == accountPeerId {
            authorName = strings.DialogList_You
        } else {
            authorName = author.compactDisplayTitle
        }
        if let peer = message.peers[message.id.peerId], author.id != peer.id {
            authorString = "\(authorName) → \(peer.displayTitle(strings: strings, displayOrder: nameDisplayOrder))"
        } else {
            authorString = authorName
        }
    } else if let peer = message.peers[message.id.peerId] {
        if message.id.peerId.namespace == Namespaces.Peer.CloudChannel {
            authorString = peer.displayTitle(strings: strings, displayOrder: nameDisplayOrder)
        } else {
            if message.id.peerId == accountPeerId {
                authorString = strings.DialogList_SavedMessages
            } else if message.flags.contains(.Incoming) {
                authorString = peer.displayTitle(strings: strings, displayOrder: nameDisplayOrder)
            } else {
                authorString = "\(strings.DialogList_You) → \(peer.displayTitle(strings: strings, displayOrder: nameDisplayOrder))"
            }
        }
    }
    return authorString
}
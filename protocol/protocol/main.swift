

protocol AdvancedLifeSupport {
     func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency()  {
        delegate?.performCPR()
    }
    
}


struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("paramedic comess")
    }
    
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)
emilio.medicalEmergency()








protocol TextButtonDelegate{
    func isPressed()
}


class TextButtonHandler {
    
    var delegate: TextButtonDelegate?
    
    func press()  {
        delegate?.isPressed()
    }
    

}

class MyView: TextButtonDelegate {

    
    init(handler: TextButtonHandler) {
        handler.delegate = self
    }
    
    
    func isPressed() {
        print("Button pressed")
    }
    
}


let handler = TextButtonHandler()

let myView = MyView(handler: handler)

handler.press()





protocol NotificationDelegate {
 

    func gotNewMessage(messageContent: String)
}



class NotificationHandler {
    
    var delegate: NotificationDelegate?
    
    func invokeMessage(messageContent: String) {
        delegate?.gotNewMessage(messageContent: messageContent)
    }
    
}


class MessagePlatform: NotificationDelegate {
    
    
    init(handler: NotificationHandler) {
        handler.delegate = self
    }
    
    
    func gotNewMessage(messageContent: String) {
        
        print("Message Geldi:  \(messageContent)")
        
    }

}



var notificationHandler = NotificationHandler()

var platfom = MessagePlatform(handler: notificationHandler)

notificationHandler.invokeMessage(messageContent: "heeeee")







































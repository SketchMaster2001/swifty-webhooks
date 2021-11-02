import Foundation

open class Webhook {
    /// The webhook's URL that we will post to
    let url: String
    
    /// Global URLSession stolen from Sword
    let session = URLSession(
      configuration: .default,
      delegate: nil,
      delegateQueue: OperationQueue()
    )
    
    // MARK: Initializer
    
    /**
     Initializes the Webhook class
     - parameter url: The webhook URL
    */
    public init(url: String) {
        self.url = url
    }
        
    // MARK: Functions
    
    /**
     Sends a POST request to the webhook's URL
     - parameter message: The message you will be sending
    */
    public func send(_ message: WebhookBody) {
        do {
            let encoder = JSONEncoder()
            encoder.keyEncodingStrategy = .convertToSnakeCase
            
            let data = try encoder.encode(message)
            let url = URL(string: self.url)
            
            var request = URLRequest(url: url!)
            request.httpMethod = "POST"
            request.httpBody = data
            
            // Add HTTP Headers
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField: "Accept")
            
            let task = self.session.dataTask(with: request) {(_, _, error) in
                if let error = error {
                    print("[Swifty Webhook] - \(error)")
                    return
                }
                return
            }
            task.resume()
            RunLoop.current.run()
            
        } catch {
            print("[Swifty Webhook] - \(error)")
            return
        }
    }
}

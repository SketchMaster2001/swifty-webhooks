import Foundation

open class Webhook {
    // MARK: Initializer
    
    /// The webhook's URL that we will post to
    let url: String
    
    /**
     Initializes the Webhook class
     - parameter url: The webhook URL
    */
    public init(url: String) {
        self.url = url
    }
    
    public func send(_ webhook: WebhookBody) {
        do {
            let encoder = JSONEncoder()
            encoder.keyEncodingStrategy = .convertToSnakeCase
            
            let data = try encoder.encode(webhook)
            let url = URL(string: self.url)
            
            var request = URLRequest(url: url!)
            request.httpMethod = "POST"
            request.httpBody = data
            
            let task = URLSession.shared.dataTask(with: request) { (_, _, error) in
                if let error = error {
                    print("[Swifty Webhook] - \(error)")
                    return
                }
            }
            task.resume()
            
        } catch {
            print("[Swifty Webhook] - \(error)")
            return
        }
    }
}

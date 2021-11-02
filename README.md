# Swifty Webhooks
Easy to use bindings for Discord's Webhook API, in Swift

## Adding to your project
In your `Package.swift`, add Swifty_Webhooks to your dependencies like so
```swift
dependencies: [
   .package(url: "https://github.com/SketchMaster2001/swifty-webhooks", .branch("master"))
]
```
You will also need to add it to your target like this 
```swift
targets: [
  .target(
     name: "Package Name",
     dependencies: [.product(name: "Swifty-Webhook", package: "swifty-webhooks")]
  )
]
```

## Using in your project
All you need to use this in your project is a Discord Webhook URL. You will need it to init the Webhook class. Take this example code as a guideline.
```swift
import Swifty_Webhook

let webhook = Webhook(url: "your webhook's url")

// We can add embeds just like Sword
var embed = Embed.init()
embed.title = "Cool Embed"
embed.color = 111111
embed.addField("Field 1", value: "Value 1", isInline: false)

// Prepare the Webhook body
var body = WebhookBody.init()
body.content = "Swifty Webhooks"
// You can add multiple embed objects
body.embeds = [embed]

// Send the webhook!
webhook.send(body)
```

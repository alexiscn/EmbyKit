# EmbyKit



```swift 
import EmbyKit

func setup() {
  EmbyClient.configure(client: "AppName", appVersion: "1.0.0", deviceId: "<deviceId>", deviceName: UIDevice.current.name)
}

func login(username: String, password: String) {
  let baseURL = URL(string: "https://example.com:443")!
  let client = EmbyClient(baseURL: baseURL)
  client.authenticate(username: username, password: password) { result in
    // handle login result
  }
}

```

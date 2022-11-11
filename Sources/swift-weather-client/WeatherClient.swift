import Foundation

@main
public struct WeatherClient {
    public private(set) var text = "Hello, World!"

    public static func main() async {
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=corvallis&units=imperial&appid=<YOUR API KEY>")!

        let (data, response) = try! await URLSession.shared.data(from: url)

        if let statusCode: Int = (response as? HTTPURLResponse)?.statusCode {
            print("The server's http status code is \(statusCode) ☃️\n")
        }

        if let json = String(bytes: data, encoding: String.Encoding.utf8) {
            print(json)
        }
    }
}

import Foundation
import Combine

public struct City: Codable, Identifiable {
    public var id: Int?
    public var cityName: String
    public var zone : String?
    public var zip: Int
        
}

let city = City(id: 0, cityName: "Dhaka", zone: "Mirpur", zip: 1216)

// Encode object and convert to json string
let encodedData = try JSONEncoder().encode(city)
let jsonString = String(data: encodedData,
                        encoding: .utf8)

print(jsonString)

// Decode json string and convert to object
if let dataFromJsonString = jsonString?.data(using: .utf8) {
    let cityFromData = try JSONDecoder().decode(City.self,
                                                from: dataFromJsonString)
    
    print(cityFromData.cityName)
}

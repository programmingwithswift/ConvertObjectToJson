import Foundation

struct City: Codable {
    let name: String
}

let city = City(name: "London")

// Encode object and convert to json string
let encodedData = try JSONEncoder().encode(city)
let jsonString = String(data: encodedData,
                        encoding: .utf8)

print(jsonString)

// Decode json string and convert to object
if let dataFromJsonString = jsonString?.data(using: .utf8) {
    let cityFromData = try JSONDecoder().decode(City.self,
                                                from: dataFromJsonString)
    
    print(cityFromData.name)
}

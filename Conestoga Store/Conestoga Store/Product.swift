
import Foundation

struct Product:Codable{
    let title:String
    let description:String
    let price: Double
}


let KeyForUserDefaults = "productList"

func saveProducts(_ products: [Product]) {
    let data = products.map { try? JSONEncoder().encode($0) }
    UserDefaults.standard.set(data, forKey: KeyForUserDefaults)
}

func loadProducts() -> [Product] {
    guard let encodedData = UserDefaults.standard.array(forKey: KeyForUserDefaults) as? [Data] else {
        return []
    }
    
    return encodedData.map { try! JSONDecoder().decode(Product.self, from: $0) }
}

//
//  ContentView.swift
//  UI-399
//
//  Created by nyannyan0328 on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
       SplashScreen()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


class SampleViewModel : ObservableObject{
    
    
    @Published var fetchedImages : [ImageModel] = []
    
    
    func fetchImage()  async throws->[ImageModel] {
        
        guard let url = URL(string: "https://picsum.photos/v2/list?page=2&limit=100") else {
            
            throw ImageError.failed
        }
        
        let (data,_) = try await URLSession.shared.data(from: url)
        
        
        let json = try JSONDecoder().decode([ImageModel].self,from: data)
        
        return json
        
        
        
        
        
        
    }
    
    
    
    
}


enum ImageError : Error{
    
    case failed
}



struct ImageModel : Identifiable,Codable{
    
    var id : String
    var author : String
    var download_url : String
    
    enum Coodingkeys : String,CodingKey{
        
        case id
        case author
        case download_url
    }
}

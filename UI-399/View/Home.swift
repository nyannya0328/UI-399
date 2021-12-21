//
//  Home.swift
//  UI-399
//
//  Created by nyannyan0328 on 2021/12/21.
//

import SwiftUI

struct Home: View {
    @StateObject var sample = SampleViewModel()
    
    let columns = Array(repeating: GridItem(.flexible(),spacing: 10), count: 3)
    var body: some View {
        
      
        NavigationView{
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                LazyVGrid(columns: columns, spacing: 16) {
                    
                    
                    ForEach(sample.fetchedImages){img in
                        
                        
                        NavigationLink {
                            
                        } label: {
                            
                            
                            
                            GeometryReader{proxy in
                                
                                let size = proxy.size
                                
                                
                                AsyncImage(url: URL(string: img.download_url)) { IMAGE in
                                    
                                    
                                    IMAGE
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: size.width, height: size.height)
                                        .cornerRadius(10)
                                } placeholder: {
                                    
                                    
                                    ProgressView()
                                        .font(.largeTitle)
                                    
                                }

                                
                                
                            }
                            .frame(height: 200)
                            
                            
                        }

                        
                        
                        
                    }
                    
                    
                    
                    
                }
                
                
                
                
                
            }
            .padding()
            .navigationTitle("Sample")
            
        }
        .task {
            
            
            do{
                
                sample.fetchedImages = try await sample.fetchImage()
                
                
            }
            catch{
                
                print(error.localizedDescription)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

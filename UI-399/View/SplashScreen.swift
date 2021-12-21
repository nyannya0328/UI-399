//
//  SplashScreen.swift
//  UI-399
//
//  Created by nyannyan0328 on 2021/12/21.
//

import SwiftUI

struct SplashScreen: View {
    @State var animatedValue : [Bool] = Array(repeating: false, count: 10)
    var body: some View {
        ZStack{
            
            GeometryReader{proxy in
                
                let size = proxy.size
                
                
                Home()
                    .frame(maxWidth:.infinity,maxHeight: .infinity)
                    .offset(y: animatedValue[6] ? 0 : (size.height + 50))
                
                
            }
            
            
            if !animatedValue[7]{
                
                
                VStack{
                    
                    ZStack{
                        
                        if animatedValue[1]{
                            
                            Circle()
                                .fill(.black)
                                .frame(width: 30, height: 30)
                                .overlay(
                                
                                    
                                    Rectangle()
                                        .fill(.white)
                                        .frame(height: animatedValue[5] ? nil : 0)
                                        .frame(maxHeight:.infinity,alignment: .top)
                                        .padding(.bottom,5)
                                    
                                    
                                    ,alignment: .bottom
                                    
                                
                                
                                )
                            
                                .offset(x: animatedValue[2] ? 35 : 0)
                              
                        }
                        
                        
                        
                        
                        
                        Circle()
                            .fill(.black)
                            .frame(width: 30, height: 30)
                            .scaleEffect(animatedValue[0] ? 1 : 0,anchor: .bottom)
                            .overlay(
                            
                                
                                Rectangle()
                                    .fill(.white)
                                    .frame(height: animatedValue[5] ? nil : 0)
                                    .frame(maxHeight:.infinity,alignment: .top)
                                    .padding(.bottom,5)
                                
                                
                                ,alignment: .bottom
                                
                            
                            
                            )
                        
                            .offset(x: animatedValue[2] ? -35 : 0)
                          
                        
                        
                        ZStack{
                            
                            
                            
                            Circle()
                                .stroke(.black,lineWidth: 10)
                                .frame(width: 65, height: 65)
                                .overlay(
                                
                                
                                    
                                    Image(systemName: "arrowtriangle.forward.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 25, height: 25)
                                        .rotationEffect(.init(degrees: -150))
                                        .scaleEffect(CGSize(width: 1.5, height: 1))
                                        .offset(x : -10,y: -12)
                                
                                    ,alignment: .topLeading
                                )
                                .offset(x: -35)
                            
                            Circle()
                                .stroke(.black,lineWidth: 10)
                                .frame(width: 65, height: 65)
                                .overlay(
                                
                                
                                    
                                    Image(systemName: "arrowtriangle.forward.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 25, height: 25)
                                        .rotationEffect(.init(degrees: -150))
                                        .scaleEffect(CGSize(width: 1.5, height: 1))
                                        .offset(y: -12)
                                
                                    ,alignment: .topTrailing
                                )
                                .offset(x: 35)
                            
                            
                            
                            
                            Circle()
                                .trim(from: 0.6, to: 1)
                                .stroke(.black,lineWidth: 8)
                                .frame(width: 130, height: 130)
                                .rotationEffect(.init(degrees: -20))
                                .scaleEffect(1.07)
                                .offset(y: 10)
                             
                            
                            
                            
                            Image(systemName: "arrowtriangle.down.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 25, height: 25)
                                .offset(y: 35)
                                .scaleEffect(CGSize(width: 1.3, height: 1),anchor: .top)
                                .background(
                                
                                    
                                    Circle()
                                        .fill(.black)
                                        .frame(width: 20, height: 20)
                                        .offset(y: 25)
                                
                                    ,alignment: .top
                                )
                            
                        
                            
                            
                            
                        }
                        .opacity(animatedValue[3] ? 1 : 0)
                        
                        
                        
                    }
                    .scaleEffect(animatedValue[3] ? 0.7 : 1)
                    .padding(.horizontal,30)
                    .drawingGroup()
                    
                    
                    
                    

                    Text("TriperdVisror")
                        .font(.title.bold())
                        .offset(y:animatedValue[4] ? -35 : 0)
                        .opacity(animatedValue[4] ? 1 : 0)
                    
                    
                }
                .opacity(animatedValue[6] ? 0 : 1)
                .environment(\.colorScheme, .light)
                
                
                
                
            }
            
            
            
        }
        .onAppear {
            
            withAnimation(.easeInOut(duration: 0.3)){
                
                animatedValue[0] = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                
                animatedValue[1] = true
                
                
                withAnimation(.easeInOut(duration: 0.3).delay(0.1)){
                    
                    animatedValue[2] = true
                    
                }
                withAnimation(.easeInOut(duration: 0.5).delay(0.1)){
                    
                    animatedValue[3] = true
                    
                }
                
                withAnimation(.easeInOut(duration: 0.5).delay(0.1)){
                    
                    animatedValue[4] = true
                    
                }
                
                withAnimation(.easeInOut(duration: 0.4).delay(0.1)){
                    
                    animatedValue[5] = true
                    
                }
                
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    
                    
                    
                    withAnimation(.easeInOut(duration: 0.4).delay(0.4)){
                        
                        
                        animatedValue[5] = false
                    }
                    
                    
                    withAnimation(.easeInOut(duration: 0.4).delay(0.4)){
                        
                        
                        animatedValue[6] = true
                    }
                    
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        
                        
                        animatedValue[7] = true
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                }
                    
                
                
                
                
                
                
                
                
                
                
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}

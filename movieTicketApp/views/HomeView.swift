//
//  HomeView.swift
//  movieTicketApp
//
//  Created by Sampel on 27/11/2023.
//

import SwiftUI

struct HomeView: View {
    @State var Animate = false
    
    @State var posters1: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]

    @State var posters2: [String] = ["poster7", "poster8", "poster9", "poster10", "poster11", "poster12"]

    @State var posters3: [String] = ["poster13", "poster14", "poster15", "poster16", "poster17", "poster18"]
    
    var body: some View {
        
        ZStack{
            CircleBackground(color: Color("greenCircle"))
                .blur(radius: Animate ? 30 : 100)
                .offset(x: Animate ? -50 : -130, y : Animate ? -30  :  -100)
                .task {
                    withAnimation(.easeInOut(duration: 7).repeatForever()) {
                        Animate.toggle()
                    }
                }
            
            CircleBackground(color: Color("pinkCircle"))
                .blur(radius: Animate ? 30 : 100)
                .offset(x: Animate ? 100 :  130, y : Animate ? 150 : 100)
            
            VStack(spacing: 0.0){
                Text("Choose Movie")
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundColor(.white)
                
                customSearchBar()
                    .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20){
                        ScrollSection(title: "Now Playig", posters: posters1)
                        
                        ScrollSection(title: "Coming Soon", posters: posters2)
                        
                        ScrollSection(title: "Top Moviews", posters: posters3)
                        
                        ScrollSection(title: "Favorite", posters: posters1)
                    }
                    .padding(.bottom, 90)
                }
            }
            .frame(maxWidth :.infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(
            LinearGradient(colors: [Color("backgroundColor"), Color("backgroundColor2")], startPoint: .top, endPoint: .bottom)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

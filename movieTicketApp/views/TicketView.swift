//
//  TicketView.swift
//  movieTicketApp
//
//  Created by Sampel on 25/11/2023.
//

import SwiftUI

struct TicketView: View {
    @State var Animate : Bool = false
    
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
            
            VStack(spacing : 30){
                Text("Mobile Ticket")
                    .font(.title3)
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                
                Text("Once you buy a movie ticket simply scan the barcode to access your movies")
                    .frame(maxWidth : 248)
                    .font(.body)
                    .foregroundColor(.white )
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal,20)
            .frame(maxWidth:.infinity, maxHeight: .infinity, alignment: .top)
            
            ticket()
                .padding(.top, 30)
                
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
        )
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}

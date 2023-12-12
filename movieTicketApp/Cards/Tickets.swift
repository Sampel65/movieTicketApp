//
//  Tickets.swift
//  movieTicketApp
//
//  Created by Sampel on 25/11/2023.
//

import SwiftUI

struct Tickets: View {
    
    @State var title = "Thor"
    @State var subTitle = "Love and thunder"
    @State var top = "thor-top"
    @State var bottom = "thor-bottom"
    @Binding var height : CGFloat
    
    var gradient = [Color("cyan"), Color("cyan").opacity(0), Color("cyan").opacity(0)]
    
    var body: some View {
        VStack(spacing : 0.0){
            VStack(spacing : 4) {
                
                Text(title)
                    .fontWeight(.bold)
                
                Text(subTitle)
                    .fontWeight(.bold)
            }
            .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 30))
            .frame(width: 250, height:  325, alignment: .top)
            .foregroundColor(.white)
            .background(
                Image(top)
                    .resizable()
                    .aspectRatio( contentMode: .fill)
            )
            .mask(
                Image(top)
                    .resizable()
                    .aspectRatio( contentMode: .fill)
            )
            .overlay {
                RoundedRectangle(cornerRadius: 40)
                    .stroke(LinearGradient(colors: gradient, startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2))
            }
            .cornerRadius(40, corners: [.topLeft, .topRight])
            
            Spacer(minLength: height)
            
            VStack(spacing : 10) {
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [7]))
                    .frame(width: 200, height: 1)
                    .opacity(0.6)
                HStack(spacing : 20) {
                    HStack(spacing: 4) {
                        Text("Date: ")
                            .fontWeight(.medium)
                            .foregroundColor(Color("lightPurple"))
                        
                        Text("April 23")
                            .foregroundColor(Color.black)
                    }
                    
                    HStack(spacing: 4) {
                        Text("Time: ")
                            .fontWeight(.medium)
                            .foregroundColor(Color("lightPurple"))
                        
                        Text("6am")
                            .foregroundColor(Color.black)
                    }
                }
                
                HStack(spacing : 20) {
                    HStack(spacing: 4) {
                        Text("Row: ")
                            .fontWeight(.medium)
                            .foregroundColor(Color("lightPurple"))
                        
                        Text("2")
                            .foregroundColor(Color.black)
                    }
                    
                    HStack(spacing: 4) {
                        Text("Seats")
                            .fontWeight(.medium)
                            .foregroundColor(Color("lightPurple"))
                        
                        Text("9, 10")
                            .foregroundColor(Color.black)
                    }
                }
                
                Image("code")
            }
            .frame(width: 250, height: 135, alignment: .top)
            .background(.ultraThinMaterial)
            .background(
                Image(bottom)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .mask(
                Image(bottom)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
        }
        .frame(height : 460)
        .font(.footnote)
        .shadow(radius: 10)
    }
}

struct Tickets_Previews: PreviewProvider {
    static var previews: some View {
        Tickets(height: .constant(0))
    }
}

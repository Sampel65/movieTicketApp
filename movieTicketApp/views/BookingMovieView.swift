//
//  BookingMovieView.swift
//  movieTicketApp
//
//  Created by Sampel on 27/11/2023.
//

import SwiftUI

struct BookingMovieView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var selectedDate = false
    @State var selectedHour = false
    @State var bindingSelection = false
    
    @State var gradient = [Color("backgroundColor2").opacity(0),Color("backgroundColor2"),Color("backgroundColor2")]
    var body: some View {
        NavigationView {
            ZStack{
                Image("booking")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxHeight: .infinity, alignment: .top)
                
                VStack {
                    LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom)
                        .frame(height: 600)
                        
                }
                .frame(maxHeight : .infinity, alignment: .bottom)
                
                VStack(spacing: 0){
                    HStack{
                        CircleButton(action: {
                            dismiss()
                        }, image: "arrow.left")
                        
                        Spacer()
                        
                        CircleButton(action: {}, image: "ellipsis")
                    }
                    .padding(EdgeInsets(top: 46, leading: 20, bottom: 0, trailing: 20))
                    
                    Text("Doctor Strange")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 200)
                    
                    
                    Text("in the muiltiverse of madness")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("Dr. Stephen strange cast a forbidden spell that opened the door way t muiltiverse, including alternative version of .....")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(30)
                    
                    Text("Select date and Time")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    HStack(alignment: .top, spacing: 30){
                        DateButton(weekDay: "Thurs",numDay: "21", isSelected: $bindingSelection)
                            .padding(.top, 90)
                        
                        DateButton(weekDay: "Fri",numDay: "22", isSelected: $bindingSelection)
                            .padding(.top, 70)
                        
                        DateButton(weekDay: "Sat",numDay: "23", width: 70, height: 100, isSelected: $selectedDate, action: {
                            withAnimation(.spring()){
                                selectedDate.toggle()
                            }
                        })
                        .padding(.top, 30)
                        
                        DateButton(weekDay: "Sun",numDay: "24", isSelected: $bindingSelection)
                            .padding(.top, 70)
                        
                        DateButton(weekDay: "Mon",numDay: "25", isSelected: $bindingSelection)
                            .padding(.top, 90)
                    }
                    
                    HStack(alignment: .top, spacing: 20){
                        TimeButton(hour: "12.00",isSelected: $bindingSelection)
                            .padding(.top, 20)
                        
                        TimeButton(hour: "13.00",isSelected: $bindingSelection)
                        
                        TimeButton(hour: "14.00", width : 70, height : 40,  isSelected: $selectedHour, action: {
                            withAnimation(.spring()){
                                selectedHour.toggle()
                            }
                        })
                        .padding(.top, -20)
                        
                        TimeButton(hour: "15.00",isSelected: $bindingSelection)
                        
                        TimeButton(hour: "16.00",isSelected: $bindingSelection)
                            .padding(.top, 20)
                    }
                    
                    NavigationLink{
                        SeatView()
                    } label: {
                        
                        LargeButton()
                            .padding(20)
                            .offset(y: selectedDate && selectedHour ? 0 : 200)
                        
                    }

                }.frame(maxHeight: .infinity, alignment: .top)
            }
            .background(Color("backgroundColor2"))
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct BookingMovieView_Previews: PreviewProvider {
    static var previews: some View {
        BookingMovieView()
    }
}

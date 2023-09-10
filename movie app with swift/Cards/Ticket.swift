//
//  Ticket.swift
//  movie app with swift
//
//  Created by walid alayash on 10/9/2023.
//

import SwiftUI

struct Ticket: View {
    @State var title: String = "Thor"
    @State var subtitle: String = "Love and Thunder"
    @State var top: String = "thor-top"
    @State var bottom: String = "thor-bottom"
    @Binding var height: CGFloat
    
    var gradient: [Color] = [Color("cyan"), Color("cyan").opacity(0), Color("cyan").opacity(0)]
    
    var body: some View {
        VStack(spacing: 0.0) {
            VStack(spacing: 4.0) {
                Text(title)
                    .fontWeight(.bold)
                
                Text(subtitle)
            }
            .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 30))
            .frame(width: 250, height: 325, alignment: .top)
            .foregroundColor(.white)
            .background(
                Image(top)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .mask(
                Image(top)
                    .resizable()
                    .frame(width: 250, height: 325)
            )
            .overlay {
                RoundedRectangle(cornerRadius: 40)
                    .stroke(LinearGradient(colors: gradient, startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2))
            }
            .cornerRadius(40, corners: [.topLeft, .topRight])
            
            Spacer(minLength: height)
            
            VStack(spacing: 10.0) {
                               Line()
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [7]))
                                .frame(width: 200,height: 1)
                                .opacity(0.6)
                            
                            HStack(spacing: 20.0) {
                                HStack(spacing: 4.0) {
                                   
                                    Text("ابريل 23")
                                        .font(Font.custom("Tajawal-Regular", size: 12))
                                        .foregroundColor(.black)
                                    Text("التاريخ:")
                                        .fontWeight(.medium)
                                        .font(Font.custom("Tajawal-Regular", size: 12))
                                        .foregroundColor(Color("lightPurple"))
                                }
                                HStack(spacing: 4.0) {
                                  
                                    Text("6 مساء")
                                        .font(Font.custom("Tajawal-Regular", size: 12))
                                        .foregroundColor(.black)
                                    Text("الوقت:")
                                        .fontWeight(.medium)
                                        .font(Font.custom("Tajawal-Regular", size: 12))
                                        .foregroundColor(Color("lightPurple"))
                                }
                            }
                            
                            HStack(spacing: 20.0) {
                                HStack(spacing: 4.0) {
                                  
                                    Text("2")
                                        .font(Font.custom("Tajawal-Regular", size: 12))
                                        .foregroundColor(.black)
                                    Text("الصف:")
                                        .fontWeight(.medium)
                                        .font(Font.custom("Tajawal-Regular", size: 12))
                                        .foregroundColor(Color("lightPurple"))
                                }
                                HStack(spacing: 4.0) {
                                    Text("9, 10")
                                        .font(Font.custom("Tajawal-Regular", size: 12))
                                        .foregroundColor(.black)
                                    Text("المقعد:")
                                        .fontWeight(.medium)
                                        .font(Font.custom("Tajawal-Regular", size: 12))
                                        .foregroundColor(Color("lightPurple"))
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
                                .frame(width: 250, height: 135)
                        )
        }
        .frame(height: 460)
        .font(.footnote)
        .shadow(radius: 10)
    }
}

struct Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Ticket(height: .constant(0))
    }
}

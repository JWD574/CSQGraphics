//
//  Home.swift
//  CSQGraphics
//
//  Created by Joseph  DeWeese on 1/7/23.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 30) {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("CSQWard Collection")
                            .font(.callout)
                            .foregroundColor(.gray)
                        Text("Graphic List")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "person.circle.fill")
                            .font(.largeTitle)
                    }
                }
                .padding(.horizontal)
                
                ForEach(todayItems) { item in
                    CardView(item: item)
                    
                }
                .padding(.horizontal, 2)
            }
            .padding(.vertical)
        }
    }
    
    //MARK: CARDVIEW
    
    @ViewBuilder
    func CardView(item: Today)-> some View {
        VStack(alignment: .leading, spacing:  15) {
            ZStack(alignment: .topLeading) {
                
                //Banner Image
                
                GeometryReader{proxy in
                    let size = proxy.size
                    
                    
                    Image(item.artwork)
                        .resizable( )
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width, height: size.height)
                        .clipShape(CustomCorner(corners: [ .topLeft, .topRight],  radius: 15))
                }
                .frame(height: 400)
                
                LinearGradient(colors: [
                    
                    .black.opacity(0.5),
                    .black.opacity(0.2),
                    .clear
                ], startPoint: .top, endPoint: .bottom)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(item.platformTitle.uppercased())
                        .font(.callout)
                        .fontWeight(.semibold)
                }
                .padding( )
            }
            
            HStack(spacing:  12) {
                Image(item.appLogo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            }
        }
    }
}
struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}

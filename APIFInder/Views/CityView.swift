//
//  CityView.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct CityView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 16) {
                    VStack(spacing: 1) {
                        HStack {
                            Text("9:41")
                                .frame(width: 109)
                                .clipped()
                                .font(.body.weight(.semibold))
                            Spacer()
                            HStack(spacing: 5) {
                                Image(systemName: "cellularbars")
                                    .imageScale(.small)
                                Image(systemName: "wifi")
                                    .imageScale(.small)
                                Image(systemName: "battery.100")
                                    .symbolRenderingMode(.hierarchical)
                                    .font(.body.weight(.light))
                            }
                            .frame(width: 109)
                            .clipped()
                            .font(.body.weight(.semibold))
                        }
                        .padding(.horizontal)
                        .padding(.top, 5)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .frame(height: 53)
                        .clipped()
                        HStack(spacing: 0) {
                            Image(systemName: "chevron.backward")
                                .symbolRenderingMode(.monochrome)
                                .frame(alignment: .bottom)
                                .clipped()
                        }
                        .frame(height: 44)
                        .clipped()
                    }
                    .frame(height: 98)
                    .clipped()
                    .background {
                        Rectangle()
                            .fill(.clear)
                            .background(Material.bar)
                    }
                    Image("myImage")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .clipped()
                        .mask { RoundedRectangle(cornerRadius: 0, style: .continuous) }
                        .padding()
                        .overlay {
                            Text("Detroit Mix 1")
                                .kerning(1.0)
                                .font(.system(size: 50, weight: .medium, design: .default))
                                .foregroundColor(.white)
                                .shadow(color: Color(.sRGB, red: 0/255, green: 0/255, blue: 0/255), radius: 18, x: 0, y: 0)
                                .padding(.top, 210)
                        }
                        .scaleEffect(1, anchor: .center)
                    Text("Fox Theater was opened in 1928 as a movie palace in the Fox Theatres chain with over 5,000 seats making it the largest theater in the city. It was listed on the National Register of Historic Places in 1985")
                        .frame(alignment: .leading)
                        .clipped()
                        .padding(.horizontal)
                        .font(.system(size: 18, weight: .regular, design: .default))
                    ForEach(0..<5) { _ // Replace with your data model here
                        VStack {
                            HStack(spacing: 16) {
                                Image("myImage")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 66, height: 66)
                                    .clipped()
                                    .mask { RoundedRectangle(cornerRadius: 14, style: .continuous) }
                                VStack(alignment: .leading) {
                                    Text("So Much Wine")
                                        .font(.body.weight(.semibold))
                                    Text("Phoebe Bridgers")
                                        .font(.body.weight(.regular))
                                        .foregroundColor(.white.opacity(0.5))
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                                VStack(alignment: .leading, spacing: 9) {
                                    HStack(alignment: .firstTextBaseline, spacing: 9) {
                                        Spacer()
                                        HStack {
                                            Image(systemName: "paperplane")
                                            Image(systemName: "paperplane")
                                            Image(systemName: "heart")
                                                .symbolRenderingMode(.monochrome)
                                        }
                                    }
                                    HStack(alignment: .firstTextBaseline) {
                                        
                                    }
                                }
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                                .background {
                                    Group {
                                        
                                    }
                                }
                                .padding(.horizontal)
                            }
                            .padding(.top, 22)
                            .padding(.horizontal, 22)
                            HStack(alignment: .firstTextBaseline, spacing: 3) {
                                
                            }
                            .font(.caption2)
                            .padding(.horizontal, 24)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 200, alignment: .center)
                        .clipped()
                        .foregroundColor(.white)
                        .background(.black)
                        .mask { RoundedRectangle(cornerRadius: 44, style: .continuous) }
                    }
                    .padding()
                }
            }
            HStack {
                Image("myImage")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .mask { RoundedRectangle(cornerRadius: 5, style: .continuous) }
                    .padding(7)
                    .padding(.leading, 2)
                VStack(alignment: .leading) {
                    Text("Mine - Beyonce")
                        .foregroundColor(.white)
                    Text("Detroit Mix 1")
                        .foregroundColor(.white)
                }
                Spacer()
                Image(systemName: "pause.fill")
                    .imageScale(.large)
                    .symbolRenderingMode(.monochrome)
                    .padding(.trailing, 20)
                Image("myImage")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .mask { RoundedRectangle(cornerRadius: 5, style: .continuous) }
                    .padding(7)
                    .padding(.leading, 2)
                    .blur(radius: 2)
                    .mask {
                        Image(systemName: "pause.fill")
                            .symbolRenderingMode(.monochrome)
                    }
            }
            .frame(maxWidth: .infinity, maxHeight: 68, alignment: .center)
            .mask { RoundedRectangle(cornerRadius: 0, style: .continuous) }
            .background {
                LinearGradient(gradient: Gradient(colors: [.orange, .pink]), startPoint: .trailing, endPoint: .leading)
                    .frame()
                    .clipped()
            }
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}

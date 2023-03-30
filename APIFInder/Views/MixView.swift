//
//  MixView.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct MixView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ZStack {
                        Image("myImage")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .scaleEffect(0.5, anchor: .center)
                            .frame(maxHeight: 200)
                            .clipped()
                        Text("Detroit")
                            .font(.system(size: 70, weight: .semibold, design: .default))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .clipped()
                            .padding(.top, 59)
                    }
                    Text("Detroit, the Motor city, birthplace of techno and house music. The hometown of music legends such as Stevie Wonder and Aretha Franklin")
                        .frame()
                        .clipped()
                        .padding(.horizontal)
                        .font(.system(size: 15, weight: .medium, design: .default))
                    VStack(spacing: 7) {
                        ForEach(0..<5) { _ // Replace with your data model here
                            HStack(spacing: 10) {
                                Image("myImage")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 70, height: 70)
                                    .clipped()
                                    .mask { RoundedRectangle(cornerRadius: 8, style: .continuous) }
                                VStack(alignment: .leading) {
                                    Text("")
                                        .font(.system(size: 32, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                    Text("")
                                        .font(.system(size: 32, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                }
                                .font(.subheadline)
                                .frame(alignment: .top)
                                .clipped()
                                Spacer()
                            }
                            .background {
                                LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
                                    .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                                    .frame(minHeight: 0, alignment: .center)
                                    .clipped()
                            }
                        }
                    }
                    .padding()
                    .frame()
                    .clipped()
                    VStack(alignment: .leading) {
                        Text("Trending Local Artists")
                            .padding(.leading)
                            .font(.title.weight(.bold))
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<5) { _ // Replace with your data model here
                                    VStack(alignment: .leading) {
                                        Image("myImage")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .scaleEffect(0.9, anchor: .center)
                                            .frame(minWidth: .infinity, minHeight: .infinity, alignment: .center)
                                            .clipped()
                                        Text("Episode Title")
                                            .font(.headline.weight(.medium))
                                        Text("Subtitle")
                                            .font(.footnote.weight(.medium))
                                            .foregroundColor(.secondary)
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .clipped()
                                }
                            }
                            .padding(.horizontal)
                        }
                        .frame()
                        .clipped()
                    }
                    .padding(.horizontal)
                    .frame(alignment: .center)
                    .clipped()
                    VStack(alignment: .leading) {
                        Text("Featured Venues & Landmarks")
                            .padding(.leading)
                            .font(.system(size: 25, weight: .bold, design: .default))
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                VStack {
                                    Image("myImage")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 141)
                                        .clipped()
                                        .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                                        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 3)
                                    Text("Motown Museum")
                                        .font(.headline.weight(.medium))
                                }
                                .frame(width: 235)
                                .clipped()
                                VStack {
                                    Image("myImage")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 141)
                                        .clipped()
                                        .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                                        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 3)
                                    Text("Motown Museum")
                                        .font(.headline.weight(.medium))
                                }
                                .frame(width: 250)
                                .clipped()
                                VStack {
                                    Image("myImage")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 141)
                                        .clipped()
                                        .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                                        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 3)
                                    Text("Motown Museum")
                                        .font(.headline.weight(.medium))
                                }
                                .frame(width: 250)
                                .clipped()
                                VStack {
                                    Image("myImage")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 141)
                                        .clipped()
                                        .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                                        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 3)
                                    Text("Motown Museum")
                                        .font(.headline.weight(.medium))
                                }
                                .frame(width: 250)
                                .clipped()
                            }
                            .padding(.horizontal)
                        }
                    }
                    .padding(.horizontal)
                    .frame()
                    .clipped()
                }
                .frame(maxWidth: .infinity)
                .clipped()
                .padding(.top, 98)
                .padding(.bottom, 150)
                ForEach(0..<5) { _ // Replace with your data model here
                    
                }
            }
            .overlay(alignment: .top) {
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
                .background(Color(.systemBackground))
            }
            .overlay(alignment: .bottom) {
                Group {
                    
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
            .frame(maxWidth: .infinity, maxHeight: 37, alignment: .center)
            .clipped()
            .mask { RoundedRectangle(cornerRadius: 0, style: .continuous) }
            .background {
                LinearGradient(gradient: Gradient(colors: [.orange, .pink]), startPoint: .trailing, endPoint: .leading)
            }
            VStack(spacing: 0) {
                Divider()
                HStack(spacing: 10) {
                    ForEach(0..<5) { _ // Replace with your data model here
                        VStack(spacing: 4) {
                            Image(systemName: "play.circle.fill")
                                .imageScale(.large)
                                .frame(height: 26)
                                .clipped()
                            Text("Listen Now")
                                .font(.caption2)
                        }
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .frame(height: 45)
                        .clipped()
                        .foregroundColor(.secondary)
                    }
                }
                .padding(.horizontal, 15)
                .padding(.top, 5)
            }
            .frame(maxWidth: .infinity, maxHeight: 84, alignment: .top)
            .clipped()
            .background {
                Rectangle()
                    .fill(.clear)
                    .background(Material.bar)
            }
        }
    }
}

struct MixView_Previews: PreviewProvider {
    static var previews: some View {
        MixView()
    }
}

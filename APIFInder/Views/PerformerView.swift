//
//  PerformerView.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct PerformerView: View {
    @State private var events = [Event]()
    var concerts: [Event]{
        events.filter({$0.type == "concert"})}

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Image("MixBackground")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .clipped()
                    .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                    .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)
                    .padding(.top)
                    .frame(height: 287, alignment: .center)
                    .clipped()
                    .scaleEffect(1, anchor: .center)
                VStack(alignment: .leading) {
                    Text("Its Love")
                        .font(.largeTitle.weight(.semibold))
                        .padding(.top)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity)
                        .clipped()
                    Text("Jill Scott")
                        .font(.headline.weight(.regular))
                        .foregroundColor(.pink)
                        .padding(.top, 2)
                        .frame(maxWidth: .infinity)
                        .clipped()
                    Text("Alternative • 2022 • Lossless")
                        .font(.footnote.weight(.regular))
                        .foregroundColor(.secondary)
                        .padding(.top, 2)
                        .frame(maxWidth: .infinity)
                        .clipped()
                }
                HStack(alignment: .firstTextBaseline, spacing: 3) {
                    Text("0:34")
                        .frame(width: 36, alignment: .leading)
                        .clipped()
                        .foregroundColor(.white.opacity(0.5))
                    ZStack(alignment: .leading) {
                        Capsule(style: .continuous)
                            .fill(.white.opacity(0.33))
                        Rectangle()
                            .fill(.white)
                            .frame(width: 33)
                            .clipped()
                    }
                    .frame(height: 7)
                    .clipped()
                    .mask { RoundedRectangle(cornerRadius: 6, style: .continuous) }
                    Text("-3:30")
                        .frame(width: 36, alignment: .trailing)
                        .clipped()
                        .foregroundColor(.white.opacity(0.5))
                }
                .font(.caption2)
                .padding(.horizontal, 24)
                .foregroundColor(.primary)
                HStack(spacing: 20) {
                    
                }
                .padding()
                VStack(spacing: 7) {
                    ForEach(concerts, id: \.id ) { item in  // Replace with your data model here
                        HStack(spacing: 10) {
                            Image("ThatWasThen")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 70)
                                .clipped()
                                .mask { RoundedRectangle(cornerRadius: 8, style: .continuous) }
                            VStack(alignment: .leading) {
                                Text(item.type)
                                    .font(.system(size: 16, weight: .medium, design: .default))
                                Text(item.venue.city)
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                            }
                            .font(.subheadline)
                            Spacer()
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.displayP3, red: 234/255, green: 76/255, blue: 97/255))
                                .font(.title3)
                        }
                        Divider()
                    }
                }
                .frame(alignment: .top)
                .clipped()
                .padding(.horizontal)
            }
            .frame(maxWidth: .infinity)
            .clipped()
            .padding(.top, 98)
            .padding(.bottom, 150)
        }
        .overlay(alignment: .top) {
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
                    Text("Detroit Mix 1")
                        .font(.headline)
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
        }
        .overlay(alignment: .bottom) {
            Group {
                
            }
        }
    }
}

struct PerformerView_Previews: PreviewProvider {
    static var previews: some View {
        PerformerView()
    }
}

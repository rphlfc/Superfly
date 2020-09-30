//
//  ContentView.swift
//  Superfly
//
//  Created by Raphael Cerqueira on 29/09/20.
//

import SwiftUI

struct ContentView: View {
    let images = ["pic1", "pic2", "header", "pic1", "pic2", "header"]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ZStack {
                    Image("header")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    VStack {
                        HStack {
                            Button(action: {}, label: {
                                Image(systemName: "arrow.turn.right.up")
                                    .rotationEffect(Angle.degrees(-90))
                                    .frame(width: 50, height: 50)
                                    .background(Color.white)
                                    .foregroundColor(Color(#colorLiteral(red: 0.3607498407, green: 0.3608062863, blue: 0.3607374728, alpha: 1)))
                                    .clipShape(Circle())
                            })
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "heart")
                                    .frame(width: 50, height: 50)
                                    .background(Color.white)
                                    .foregroundColor(Color(#colorLiteral(red: 0.3607498407, green: 0.3608062863, blue: 0.3607374728, alpha: 1)))
                                    .clipShape(Circle())
                            })
                        }
                        
                        Spacer()
                        
                        HStack {
                            Spacer()
                            
                            Circle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color(#colorLiteral(red: 0.9900149703, green: 0.6732826233, blue: 0.2801778018, alpha: 1)))
                                .overlay(
                                    VStack(spacing: 0) {
                                        Text("Jam")
                                        
                                        HStack {
                                            Text("Alert")
                                            
                                            Image(systemName: "bolt.fill")
                                        }
                                    }
                                    .font(.system(size: 19, weight: .bold, design: .serif))
                                    .foregroundColor(.white)
                                )
                        }
                        .padding(.trailing)
                        .offset(y: 45)
                    }
                    .padding(.top, 40)
                    .padding(.horizontal)
                }
                .frame(height: UIScreen.main.bounds.height / 2.2)
                
                VStack {
                    VStack(alignment: .leading) {
                        Text("Sun, 27 Sep. 2020")
                            .font(.system(size: 17, weight: .medium))
                            .foregroundColor(Color(#colorLiteral(red: 0.7234200835, green: 0.6854656339, blue: 0.6595992446, alpha: 1)))
                        
                        Text("Gregory Porter live in Concert")
                            .font(.system(size: 42, design: .serif))
                            .foregroundColor(Color(#colorLiteral(red: 0.3607498407, green: 0.3608062863, blue: 0.3607374728, alpha: 1)))
                            .padding(.top, 20)
                        
                        Divider()
                        
                        HStack(alignment: .top) {
                            Image(systemName: "paperplane")
                                .foregroundColor(Color(#colorLiteral(red: 0.3607498407, green: 0.3608062863, blue: 0.3607374728, alpha: 1)))
                            
                            VStack(alignment: .leading) {
                                Text("Stadhalle Vienna")
                                    .font(.system(size: 17, weight: .bold))
                                    .foregroundColor(Color(#colorLiteral(red: 0.3607498407, green: 0.3608062863, blue: 0.3607374728, alpha: 1)))
                                
                                Text("Roland-Rainer-Platz 1, 1150 Wien")
                                    .font(.system(size: 17))
                                    .foregroundColor(Color(#colorLiteral(red: 0.4705448151, green: 0.4706160426, blue: 0.470529139, alpha: 1)))
                            }
                            .padding(.leading)
                        }
                        .padding(.top, 20)
                        
                        HStack {
                            Image(systemName: "clock")
                                .foregroundColor(Color(#colorLiteral(red: 0.3607498407, green: 0.3608062863, blue: 0.3607374728, alpha: 1)))
                            
                            Text("Sun, 27 Sept. 2020,")
                                .font(.system(size: 17))
                                .foregroundColor(Color(#colorLiteral(red: 0.4705448151, green: 0.4706160426, blue: 0.470529139, alpha: 1)))
                                .padding(.leading)
                            
                            Text("5:00 AM MESZ")
                                .font(.system(size: 17, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.3607498407, green: 0.3608062863, blue: 0.3607374728, alpha: 1)))
                        }
                        .padding(.top, 20)
                        
                        Divider()
                            .padding(.top)
                        
                        Text("We'd tell you Gregory Porter is back, but you probably already knew. You probably felt the earth rumbling, announcing the man's bone-deep baritone, or you felt the air change as the warmth of his sound filled the atmosphere like a hug from above. That's because All Rise, his sixth studio album, marks a return to Porter's beloved original songwriting — heart-on-sleeve")
                            .font(.system(size: 17))
                            .foregroundColor(Color(#colorLiteral(red: 0.4705448151, green: 0.4706160426, blue: 0.470529139, alpha: 1)))
                            .padding(.top)
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(0 ..< images.count) { i in
                                Image(images[i])
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 120, height: 120)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                            }
                        }
                        .padding(.horizontal)
                    }
                    .padding(.top)
                    
                    VStack {
                        Text("lyrics imbued with everyday philosophy and real-life detail, set to a stirring mix of jazz, soul, blues, and gospel.")
                            .font(.system(size: 17))
                            .foregroundColor(Color(#colorLiteral(red: 0.4705448151, green: 0.4706160426, blue: 0.470529139, alpha: 1)))
                            .padding(.top)
                    }
                    .padding(.horizontal)
                }
                .background(Color.white)
                .padding(.top, 40)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

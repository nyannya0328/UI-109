//
//  Home.swift
//  UI-109
//
//  Created by にゃんにゃん丸 on 2021/01/22.
//

import SwiftUI

struct Home: View {
    @StateObject var model = HomeViewModel()
    @State var columns = Array(repeating: GridItem(.flexible(),spacing: 10), count: 1)
    var maxheight = UIScreen.main.bounds.height / 2.3
    
    @State var show = false
    var body: some View {
       
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack{
                    
                    GeometryReader{reader -> AnyView in
                        
                        let y = reader.frame(in:.global).minY + maxheight
                        
                        if y < 0{
                            
                            withAnimation(.linear){show = true}
                            
                        }
                        else{
                            withAnimation(.linear){show = false}
                            
                            
                        }
                        
                        
                        return AnyView(
                        
                            Image("p9")
                                .resizable()
                                .frame(height: maxheight)
                                .offset(y: -reader.frame(in:.global).minY)
                        )
                        
                        
                    }
                    .frame(height: maxheight)
                    
                    
                    
                    LazyVGrid(columns: columns,spacing: 10, content: {
                        
                        ForEach(model.alubums){album in
                            
                            AlbumRow(album: album, columns: $columns)
                            
                        }
                        
                        
                    })
                    .padding()
                    .background(Color.black)
                    
                }
                
                
            })
            
            HStack{
                
                Image("p9")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .cornerRadius(10)
                  
                    
                
                VStack{
                    
                    Text("Now Smile")
                        .font(.caption)
                        .foregroundColor(.white)
                    
                    Text("Love Girl")
                        .font(.caption)
                        .foregroundColor(.white)
                    
                    
                }
                
                Spacer()
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "pause.fill")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.blue)
                })
                
                Button(action: {
                    
                    if columns.count == 2 {columns.removeLast()}
                    else{columns.append(GridItem(.flexible(),spacing:15))}
                    
                }, label: {
                    Image(systemName: columns.count == 2 ? "rectangle.grid.2x2" : "rectangle.3.offgrid")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.blue)
                })
                
                
            }
            .padding([.horizontal,.top])
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(BlurView(style: .systemChromeMaterialDark))
            .opacity(show ? 1 : 0)
            
        })
        
        
        .ignoresSafeArea(.all, edges: .top)
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

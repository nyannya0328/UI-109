//
//  AlbumRow.swift
//  UI-109
//
//  Created by にゃんにゃん丸 on 2021/01/22.
//

import SwiftUI

struct AlbumRow: View {
    
    var album : album
    @Binding var columns : [GridItem]
    var body: some View {
        
        VStack(spacing:15){
            HStack{
                
                Image(album.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: columns.count == 2 ? (UIScreen.main.bounds.width - 45) / 2 : 85, height: columns.count == 2 ? (UIScreen.main.bounds.width - 45) / 2 : 85)
                    .cornerRadius(10)
                
                if columns.count == 1{
                    
                    VStack(alignment:.leading,spacing:10){
                        
                        Text(album.name)
                            .font(.title)
                         
                           
                        
                        Text(album.ahthor)
                            .font(.title2)
                            .foregroundColor(.gray)
                           
                        
                        
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        Image("i")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 20, height: 20)
                        
                    })
                }
                
               
                
            }
            
            if columns.count == 2{
                HStack{
                
                    
                    VStack(alignment:.leading,spacing:10){
                        
                        Text(album.name)
                            .font(.title)
                         
                           
                        
                        Text(album.ahthor)
                            .font(.title2)
                            .foregroundColor(.gray)
                           
                        
                        
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        Image("i")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 20, height: 20)
                        
                    })
                
                }
            }
           
          
        }
       
    }
}


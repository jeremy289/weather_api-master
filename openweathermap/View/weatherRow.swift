//
//  weatherRow.swift
//  Hw5
//
//  Created by User20 on 2020/6/10.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import SwiftUI

struct weatherRow: View {
    var Details : detail
    
    var body: some View {
        VStack {
            Text(Details.name)
            
        }
    }
}
/*
struct weatherRow_Previews: PreviewProvider {
    static var previews: some View {
        weatherRow()
    }
}
*/

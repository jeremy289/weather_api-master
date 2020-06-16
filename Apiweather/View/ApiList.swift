//
//  ApiList.swift
//  Hw5
//
//  Created by User24 on 2020/6/15.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import SwiftUI

struct ApiList: View {
    @ObservedObject var apiListViewModel = ApiListViewModel()
      
      var body: some View {
          NavigationView {
              List(apiListViewModel.locations, rowContent: { (wdata) in
                NavigationLink(destination: ApiDetail(wdata: wdata)) {
                    ApiRow(wdata: wdata)
                  }
              })
              .onAppear {
                  self.apiListViewModel.fetchApi()
              }
          }
    }
}

struct ApiList_Previews: PreviewProvider {
    static var previews: some View {
        ApiList()
    }
}

//
//  weatherList.swift
//  Hw5
//
//  Created by User20 on 2020/6/10.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import SwiftUI

struct weatherList: View {
    @ObservedObject var WeatherListViewModel = weatherListViewModel()
      
      var body: some View {
          NavigationView {
              List(WeatherListViewModel.lists, rowContent: { (Details) in
                  NavigationLink(destination: weatherDetail(Details:Details)) {
                      weatherRow(Details: Details)
                  }
              })
              .onAppear {
                  self.WeatherListViewModel.fetchWeathers()
              }
          }
    }
}

struct weatherList_Previews: PreviewProvider {
    static var previews: some View {
        weatherList()
    }
}

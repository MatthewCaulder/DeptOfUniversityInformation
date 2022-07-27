//
//  ContentView.swift
//  DeptOfUniversityInfo
//
//  Created by Matt Caulder on 7/27/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var depts = DepartmentsViewModel()
    let departmentsTitleText: LocalizedStringKey = "Departments"
    let deptNameText: LocalizedStringKey = "Dept Name"
    let teachersText: LocalizedStringKey = "Teachers"
    let publicationsText: LocalizedStringKey = "Publications"
    let loadingError: LocalizedStringKey = "LoadingError"
    var body: some View {
        VStack{
            Text(departmentsTitleText)
                .border(.black)
                .frame(width:428,height:50)
            if depts.isError{
                Text(loadingError)
                    .foregroundColor(.red)
                    .font(.largeTitle)
                    .padding(.top,200)
            }else{
                List{
                    ForEach(depts.depts,id: \.self){ dept in
                        VStack{
                            Text("deptName")
                        
                        }
                    }
                }.onAppear{
                    depts.getData()
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

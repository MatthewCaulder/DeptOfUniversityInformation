//
//  DepartmentsViewModel.swift
//  DeptOfUniversityInfo
//
//  Created by Matt Caulder on 7/27/22.
//

import Foundation

class DepartmentsViewModel:ObservableObject {
    //TODO: var
    @Published var depts: [Departments] = []
    @Published var isError = false
    func getData(){
    //TODO: apiurl
        guard let apiUrl = URL(string:"https://mocki.io/v1/aadecc9b-7e10-405b-9978-e47745dac5b1") else{
            print("error in url")
            isError = true
            return
        }
    //TODO: datatask
        let dt = URLSession.shared.dataTask(with:apiUrl){[weak self] data,response, error in
            guard let data = data else{
                print("error in data")
                self?.isError = true
                return
            }
            do{
                
                let res = try JSONDecoder().decode([Departments].self,from:data)
                DispatchQueue.main.async{
                    //TODO: Still need to sort
                    self?.depts = res
                }
            }catch{
                print("error decoding")
                print(error)
                self?.isError = true
                return
            }
        }
        dt.resume()
    }
}

//
//  List-State.swift
//  State-Demo
//
//  Created by ds-mayur on 9/2/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import Foundation
import SwiftUI

struct ListContentView : View{
    
    @State var tasks = [TaskModel]()
    
    private func addTask(){
        self.tasks.append(TaskModel(name: "Wash the car"))
    }
    
    var body : some View{
        List{
            
            Button(action: self.addTask){
                Text("Add Task")
                    .foregroundColor(Color.orange)
            }
            
            ForEach(tasks) { task in
                Text(task.name)
            }
        }
    }
}


struct ListContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListContentView()
    }
}

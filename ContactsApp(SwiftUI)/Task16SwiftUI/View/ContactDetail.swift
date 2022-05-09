//
//  ContactDetail.swift
//  Task16SwiftUI
//
//  Created by Tymofii (Work) on 04.12.2021.
//

import SwiftUI

struct ContactDetail: View {
    
    let contact: Contact
    
    var body: some View {
        VStack {
            Image(uiImage: contact.image)
                .resizable()
                .customStyle()
            
            Text("\(contact.firstName) \(contact.lastName)")
                .font(.largeTitle).padding(.bottom, 50)
                            
            HStack {
                Text("Phone")
                Spacer()
                Text(contact.phone).customStyle()
            }
            .padding(.bottom, 5)
            
            HStack {
                Text("Email")
                Spacer()
                Text(contact.email).customStyle()
            }
            .padding(.bottom, 5)
            
            HStack {
                Text("Address")
                Spacer()
                Text("\(contact.street), \(contact.city)").customStyle()
            }
            
            Spacer()
        }
        .padding(40)
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contact: Contact(firstName: "Tymofii", lastName: "Kravchenkov", phone: "+3809365043", email: "gmail.com", street: "Some street", city: "Kharkiv", image: UIImage(systemName: "person")!))
    }
}

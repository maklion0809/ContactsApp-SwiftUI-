//
//  ContactRow.swift
//  Task16SwiftUI
//
//  Created by Tymofii (Work) on 04.12.2021.
//

import SwiftUI

struct ContactRow: View {
    
    let contact: Contact
    
    var body: some View {
        HStack {
            Image(uiImage: contact.image)
                .resizable()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .clipped()
            
            VStack(alignment: .leading) {
                Text("\(contact.firstName) \(contact.lastName)")
                    .font(.headline)
                Text(contact.city)
                    .font(.subheadline)
            }
            
            Spacer()
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: Contact(firstName: "Tymofii", lastName: "Kravchenkov", phone: "+3809365043", email: "gmail.com", street: "Some street", city: "Kharkiv", image: UIImage(systemName: "person")!))
    }
}


//
//  CreatorContact.swift
//  Task16SwiftUI
//
//  Created by Tymofii (Work) on 04.12.2021.
//

import SwiftUI

struct CreatorContact: View {
    
    @Binding var isPresented: Bool
    @ObservedObject var listContacts : ListContacts
    @State private var contact: Contact = Contact(firstName: "", lastName: "", phone: "", email: "", street: "", city: "", image: UIImage(systemName: "person")!)
    @State private var message = ""
    @State private var isAlertPresented = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 12) {
                TextField("First name", text: $contact.firstName)
                    .setRow()
                TextField("Last name", text: $contact.lastName)
                    .setRow()
                TextField("Phone", text: $contact.phone)
                    .setRow(keyboardType: .phonePad)
                TextField("Email", text: $contact.email)
                    .setRow(keyboardType: .emailAddress)
                TextField("Name street", text: $contact.street)
                    .setRow()
                TextField("Name city", text: $contact.city)
                    .setRow()
                
                Button(action: {
                    guard !contact.lastName.isEmpty,
                          !contact.firstName.isEmpty,
                          !contact.phone.isEmpty,
                          !contact.email.isEmpty else {
                        self.message = "Fill in the blank fields"
                        self.isAlertPresented.toggle()
                        return
                    }
                    listContacts.contacts.append(contact)
                    isPresented.toggle()
                }) {
                    
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 250, height: 50)
                        .foregroundColor(.black)
                        .overlay(
                        Text("Create contact")
                            .foregroundColor(.white)
                    )
                }
                .padding()
                
                Spacer()
            }
            .navigationBarTitle(Text("Create contact"))
            .alert(isPresented: $isAlertPresented) {
                Alert(title: Text("Error"), message: Text(self.message), dismissButton: .default(Text("Ok")))
            }
        }
    }
}

struct CreatorContact_Previews: PreviewProvider {
    static var previews: some View {
        CreatorContact(isPresented: .constant(false), listContacts: ListContacts())
    }
}






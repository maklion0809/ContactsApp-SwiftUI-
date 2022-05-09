//
//  ContactList.swift
//  Task16SwiftUI
//
//  Created by Tymofii (Work) on 04.12.2021.
//

import SwiftUI

struct ContactList: View {
    
    @State private var isPresented = false
    @StateObject private var listContacts = ListContacts()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(listContacts.contacts, id: \.self) { contact in
                    NavigationLink(destination: ContactDetail(contact: contact)) {
                        ContactRow(contact: contact)
                    }
                }
                .onDelete(perform: delete)
                .onMove(perform: move)
            }
            .navigationTitle(Text("Contacts"))
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {
                        withAnimation {
                            self.isPresented = true
                        }
                    }){
                        Image(systemName: "plus").font(.title2).foregroundColor(.primary)
                    }
                    .sheet(isPresented: $isPresented) {
                        CreatorContact(isPresented: $isPresented, listContacts: listContacts)
                    }
                }
            }
            .toolbar {
                EditButton()
            }
        }
        .navigationViewStyle(.stack)
    }
    
    func delete(at offsets: IndexSet) {
        listContacts.contacts.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        listContacts.contacts.move(fromOffsets: source, toOffset: destination)
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}

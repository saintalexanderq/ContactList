//
//  main.m
//  contactList1
//
//  Created by Alex Quigley on 2017-10-31.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main() {
    
    InputCollector *collector = [[InputCollector alloc] init];
    
    ContactList *contactList = [[ContactList alloc] init];
    
    while (YES) {
        NSString *userInput = [collector inputForPrompt:@"What would you like do next?\n NEW - Create a new contact\n LIST - List all contacts\n QUIT - Exit Application"];
        
        if ([userInput isEqualToString:@"QUIT"]) {
            return 0;
            
        } else if ([userInput isEqualToString:@"NEW"]) {
            Contact *contact = [[Contact alloc] init];
            NSString *name = [collector inputForPrompt:@"Enter Name"];
            contact.name = name;
            NSString *email = [collector inputForPrompt:@"Enter Email"];
            contact.email = email;
            [contactList addContact:contact];
            
        } else if ([userInput isEqualToString:@"LIST"]) {
            [contactList printContacts];
        }
    }
    return 0;
}

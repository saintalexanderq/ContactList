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
        NSString *userInput = [collector inputForPrompt:@"What would you like do next?\n new - Create a new contact\n list - List all contacts\n quit - Exit Application"];
        
        if ([userInput isEqualToString:@"quit"]) {
            return 0;
            
        } else if ([userInput isEqualToString:@"new"]) {
            Contact *contact = [[Contact alloc] init];
            NSString *name = [collector inputForPrompt:@"Enter your full name"];
            contact.name = name;
            NSString *email = [collector inputForPrompt:@"Enter your email"];
            contact.email = email;
            [contactList addContact:contact];
            
        } else if ([userInput isEqualToString:@"list"]) {
            [contactList printContacts];
        }
    }
    return 0;
}

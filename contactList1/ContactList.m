//
//  ContactList.m
//  contactList1
//
//  Created by Alex Quigley on 2017-10-31.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "ContactList.h"

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactsArray = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [self.contactsArray addObject:newContact];
}

-(void)printContacts {
    int i = 0;
    for (Contact *contact in self.contactsArray) {
        //int indexValue = [self indexOfObject:yourString];
        NSLog(@"%d: <%@> ()", i, contact.name);
        i++;
    }
}




@end

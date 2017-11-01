//
//  ContactList.h
//  contactList1
//
//  Created by Alex Quigley on 2017-10-31.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"


@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contactsArray;

-(void)addContact:(Contact *)newContact;

-(void)printContacts;



@end

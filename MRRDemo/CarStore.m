//
//  CarStore.m
//  MRRDemo
//
//  Created by Krunal on 3/19/15.
//  Copyright (c) 2015 KM. All rights reserved.
//

#import "CarStore.h"

@implementation CarStore

NSMutableArray *_inventory;

- (NSMutableArray *) inventory
{
    return _inventory;
}

- (void) setInventory:(NSMutableArray *)newInventory
{
    
    if(_inventory == newInventory)
    {
        return;
    }
    
    NSMutableArray *oldValue = _inventory;
    _inventory = [newInventory retain];
    [oldValue release];
}

+(CarStore *)carStore
{
    CarStore *newStore = [[CarStore alloc] init];
    return [newStore autorelease];
}

-(void) dealloc
{
    [_inventory release];
    [super dealloc];
}

@end

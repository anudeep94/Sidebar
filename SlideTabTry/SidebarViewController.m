//
//  SidebarViewController.m
//  SlideTabTry
//
//  Created by vm mac on 05/07/2016.
//  Copyright © 2016 PytenLabs. All rights reserved.
//

#import "SidebarViewController.h"

@interface SidebarViewController () 



@end

@implementation SidebarViewController
{
NSArray *menuItems;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   menuItems = @[@"Title", @"News", @"Comments", @"Map", @"Calendar", @"Wishlist", @"Bookmark", @"Tag"];
    self.tableView.delegate= self;
    self.tableView.dataSource=self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellIdentifier = [menuItems objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    return cell;
}



@end

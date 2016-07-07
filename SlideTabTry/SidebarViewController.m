//
//  SidebarViewController.m
//  SlideTabTry
//
//  Created by vm mac on 05/07/2016.
//  Copyright © 2016 PytenLabs. All rights reserved.
//

#import "SidebarViewController.h"
#import "PhotoViewController.h"

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


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    // Set the title of navigation bar by using the menu items
    NSIndexPath *indexPath =[self. tableView indexPathForSelectedRow];
    UINavigationController *destViewController = (UINavigationController*) segue.destinationViewController;
    destViewController.title =[[menuItems objectAtIndex:indexPath.row] capitalizedString];
    
    //Set the photo if it navigates to photoview
    if ([segue.identifier isEqualToString:@"showPhoto"]) {
        UINavigationController *navController = segue.destinationViewController;
        PhotoViewController *photoController =[navController childViewControllers].firstObject;
        NSString *photoFilename= [NSString stringWithFormat:@"%@_photo", [menuItems objectAtIndex:indexPath.row
                                                                       ]];
        photoController.photoFilename = photoFilename;
    
    }
    
    
    
}


@end

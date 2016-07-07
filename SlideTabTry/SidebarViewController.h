//
//  SidebarViewController.h
//  SlideTabTry
//
//  Created by vm mac on 05/07/2016.
//  Copyright © 2016 PytenLabs. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SidebarViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property(nonatomic, weak) IBOutlet UITableView *tableView;

@end

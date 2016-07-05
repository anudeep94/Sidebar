//
//  PhotoViewController.h
//  SlideTabTry
//
//  Created by vm mac on 05/07/2016.
//  Copyright © 2016 PytenLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (strong, nonatomic) NSString *photoFilename;

@end

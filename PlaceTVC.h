//
//  PlaceTVC.h
//  Test_ios_nextDots
//
//  Created by LTSSetup on 2/8/17.
//  Copyright © 2017 BrunoCardenasTorres. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlaceTVC : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblNombre;
@property (weak, nonatomic) IBOutlet UILabel *lblPrecio;
@property (weak, nonatomic) IBOutlet UILabel *lblTipo;
@property (weak, nonatomic) IBOutlet UIImageView *imgvPlace;
@property (weak, nonatomic) IBOutlet UIButton *btnFavorito;

@end

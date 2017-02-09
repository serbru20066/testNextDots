
//
//  ViewController.m
//  Test_ios_nextDots
//
//  Created by LTSSetup on 2/7/17.
//  Copyright © 2017 BrunoCardenasTorres. All rights reserved.
//

#import "ViewController.h"
#import "PlaceTVC.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgvPeople;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imgvPeople.layer.cornerRadius = _imgvPeople.bounds.size.width/2;
    _imgvPeople.layer.masksToBounds = YES;

}

-(void)viewDidAppear:(BOOL)animated
{

    NSArray *arrPlacesAll = [[NSUserDefaults standardUserDefaults] objectForKey:@"arrPlaces"];

    arrPlaces = [[NSMutableArray alloc]
                 init];
    for (int i=0; i<[arrPlacesAll count]; i++) {
        
        NSDictionary *dict = [arrPlacesAll objectAtIndex:i];
        
        if ([[dict objectForKey:@"favorite"] isEqualToString:@"SI"]) {
            [arrPlaces addObject:dict];
        }
        
    }
    
    [_tableView reloadData];
    NSLog(@"");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark UitableView delegates


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [arrPlaces count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSDictionary *dicItem = [arrPlaces objectAtIndex:indexPath.row];
    
     if ([[dicItem objectForKey:@"favorite"] isEqualToString:@"SI"]) {
         
         PlaceTVC *cell = [tableView dequeueReusableCellWithIdentifier:@"PlaceTVC"];
         cell.lblTipo.text = [dicItem objectForKey:@"Tipo"];
         cell.lblNombre.text = [dicItem objectForKey:@"nombre"];
         cell.lblPrecio.text = [dicItem objectForKey:@"Precio"];
         cell.imgvPlace.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[dicItem objectForKey:@"id"]]];
         [cell.btnFavorito setHidden:YES];
         
         
         
         return cell;
         
     }
    else
    {
        return  nil;
    
    }
    

    
    
}

@end

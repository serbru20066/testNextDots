//
//  HomeVC.m
//  Test_ios_nextDots
//
//  Created by LTSSetup on 2/7/17.
//  Copyright © 2017 BrunoCardenasTorres. All rights reserved.
//

#import "HomeVC.h"
#import "PlaceTVC.h"

@interface HomeVC ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];

    


   }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewDidAppear:(BOOL)animated
{

    arrPlaces = [[NSUserDefaults standardUserDefaults] objectForKey:@"arrPlaces"];
    [_tableView reloadData];

}
#pragma mark UitableView delegates


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [arrPlaces count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSDictionary *dicItem = [arrPlaces objectAtIndex:indexPath.row];
    
    PlaceTVC *cell = [tableView dequeueReusableCellWithIdentifier:@"PlaceTVC"];
    cell.lblTipo.text = [dicItem objectForKey:@"Tipo"];
    cell.lblNombre.text = [dicItem objectForKey:@"nombre"];
    cell.lblPrecio.text = [dicItem objectForKey:@"Precio"];
    cell.imgvPlace.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[dicItem objectForKey:@"id"]]];
    cell.btnFavorito.tag=indexPath.row;
    [cell.btnFavorito addTarget:self action:@selector(TapFavorite:) forControlEvents:UIControlEventTouchUpInside];
    

    if ([[dicItem objectForKey:@"favorite"] isEqualToString:@"SI"]) {
        [cell.btnFavorito setImage:[UIImage imageNamed:@"ic_favorite"] forState:UIControlStateNormal];
    }
    else
    {
        [cell.btnFavorito setImage:[UIImage imageNamed:@"ic_favorite_border"] forState:UIControlStateNormal];
    
    }

    
    return cell;
    
    
}
-(void)TapFavorite:(UIButton*)sender
{

    int index = sender.tag;


    NSMutableArray *arrAux = [[NSMutableArray alloc] init];
    
    for (int i=0; i<[arrPlaces count]; i++) {
        
        NSMutableDictionary *dict = [arrPlaces objectAtIndex:i];
        
        if (i == index) {
            
            NSMutableDictionary *newDict = [[NSMutableDictionary alloc] init];
            [newDict addEntriesFromDictionary:dict];
            [newDict setObject:@"SI" forKey:@"favorite"];
            dict = newDict;
            
        }
        
        [arrAux addObject:dict];
        
    }

    [[NSUserDefaults standardUserDefaults] setObject:arrAux forKey:@"arrPlaces"];
    
    
    arrPlaces = [[NSUserDefaults standardUserDefaults] objectForKey:@"arrPlaces"];
    [_tableView reloadData];

    

}
@end

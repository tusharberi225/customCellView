//
//  ViewController.m
//  TableView2
//
//  Created by TUSHAR BERI on 15/09/18.
//  Copyright © 2018 tired guardian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize arrname, arrsurname;
- (void)viewDidLoad {
    [super viewDidLoad];
    arrname = [[NSMutableArray alloc]initWithObjects:@"Tushar",@"Tanishq",@"Raghav",@"mayank",@"Vaibhav" , nil];
    arrsurname = [[NSMutableArray alloc]initWithObjects:@"Beri",@"gaba",@"kumar",@"arora",@"Dang", nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrname.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    cell.textLabel.text=[arrname objectAtIndex:indexPath.row];
    cell.detailTextLabel.text=[arrsurname objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

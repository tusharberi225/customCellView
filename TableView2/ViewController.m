//
//  ViewController.m
//  TableView2
//
//  Created by TUSHAR BERI on 15/09/18.
//  Copyright © 2018 tired guardian. All rights reserved.
//

#import "ViewController.h"
#import "customCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    customCell *cell1= [[customCell alloc]init];
    cell1.strimg=@"Image1.jpg";
    cell1.strlbl1=@"Tushar";
    cell1.strlbl2=@"Beri";
    customCell *cell2= [[customCell alloc]init];
    cell2.strimg=@"Image2.jpg";
    cell2.strlbl1=@"Mayank";
    cell2.strlbl2=@"Arora";
    customCell *cell3= [[customCell alloc]init];
    cell3.strimg=@"Image3.jpg";
    cell3.strlbl1=@"Vaibhav";
    cell3.strlbl2=@"Dang";
    customCell *cell4= [[customCell alloc]init];
    cell4.strimg=@"Image4.jpg";
    cell4.strlbl1=@"Tanishq";
    cell4.strlbl2=@"Gaba";
    customCell *cell5= [[customCell alloc]init];
    cell5.strimg=@"Image5.jpg";
    cell5.strlbl1=@"Yash";
    cell5.strlbl2=@"Gupta";
   
    _arrdata =[[NSMutableArray alloc] initWithObjects:@"cell1",@"cell2",@"cell3",@"cell4",@"cell5", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrdata.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    if(cell== nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    customCell *maincell = [_arrdata objectAtIndex:indexPath.row];
    UIImageView *img=(UIImageView *)[cell viewWithTag:1];
    img.image=[UIImage imageNamed:maincell.strimg];
    UILabel *lbl1 = (UILabel *)[cell viewWithTag:2];
    UILabel *lbl2 =(UILabel *)[cell viewWithTag:3];
    lbl1.text = maincell.strlbl1;
    lbl2.text = maincell.strlbl2;
    return cell;
    
}
@end

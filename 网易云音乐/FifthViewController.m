//
//  FifthViewController.m
//  网易云音乐
//
//  Created by cinderella on 2019/7/26.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "FifthViewController.h"
#import "TAY2TableViewCell.h"
#import "oViewController.h"

@interface FifthViewController () {
    UITableView *tableView ;
}

@end

NSArray *oneNames;
NSArray *twoNames;
//UISwitch *mySwitch;
UIImage *image;
UILabel *label;

@implementation FifthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITabBarItem* tarBarItem = [[UITabBarItem alloc] initWithTitle:@"账号" image:nil tag:105];
    tarBarItem.image = [[UIImage imageNamed:@"5.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tarBarItem.selectedImage = [[UIImage imageNamed:@"a5.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tarBarItem;
    
    self->tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 80, 414, 600) style:UITableViewStylePlain] ;
    [self.view addSubview: tableView] ;
    
    tableView.delegate = self ;
    tableView.dataSource = self ;
    
    UIImage *imageSao = [UIImage imageNamed:@"扫一扫.png"] ;
    UIBarButtonItem *btnSao = [[UIBarButtonItem alloc] initWithImage:imageSao style:UIBarButtonItemStylePlain target:self action:@selector(pressSao)] ;
    self.navigationItem.leftBarButtonItem = btnSao;
    
    UIImage *imageLan = [UIImage imageNamed:@"lan.png"] ;
    UIBarButtonItem *btnLan = [[UIBarButtonItem alloc] initWithImage:imageLan style:UIBarButtonItemStylePlain target:self action:@selector(pressLan)] ;
    self.navigationItem.rightBarButtonItem = btnLan; 
    
    [tableView registerClass:[TAY2TableViewCell class] forCellReuseIdentifier:@"456"] ;
}

-(void) pressSao{
    oViewController *one = [[oViewController alloc] init] ;
    [self.navigationController pushViewController:one animated:NO] ;
}

-(void) pressLan{
    oViewController *one = [[oViewController alloc] init] ;
    [self.navigationController pushViewController:one animated:NO] ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TAY2TableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"456"] ;
    
    cell.selectedBackgroundView = [[UIView alloc] init];
    cell.multipleSelectionBackgroundView = [[UIView alloc] initWithFrame:cell.bounds];
    cell.multipleSelectionBackgroundView.backgroundColor = [UIColor clearColor];
    
    if(!cell) {
        cell = [[TAY2TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"456"];
        
        cell.selectionStyle = UITableViewCellSelectionStyleGray;
    } 
    
    NSArray *oneNames = @[@"口袋铃声", @"我的订单", @"附近的人", @"我的好友"];
    
    if(indexPath.section == 0) {
        UIImage *image = [UIImage imageNamed:@"yy.jpg"] ;
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom] ;
        btn.frame = CGRectMake(340, 10, 60, 50);
        UIImage *arriveImage = [UIImage imageNamed:@"签到.png"] ;
        [btn setImage:arriveImage forState: UIControlStateNormal] ;
        [btn addTarget:self action:@selector(pressArrive:) forControlEvents:UIControlEventTouchUpInside] ;
        [cell.arrayBtn addObject:btn];
        [cell.contentView addSubview:cell.arrayBtn[0]] ;
        cell.label2.text = @"三分";
        cell.label2.font = [UIFont systemFontOfSize:16] ;
        cell.label2.frame = CGRectMake(88, 10, 50, 20) ;
        cell.label1.text = @" LV 8";
        cell.label1.font = [UIFont systemFontOfSize:10] ;
        cell.label1.frame = CGRectMake(88, 32, 30, 20) ;
        cell.label1.layer.cornerRadius = 8;
        cell.layer.masksToBounds = YES;
        cell.label1.layer.backgroundColor = [UIColor grayColor].CGColor;
        cell.label1.backgroundColor = [UIColor grayColor] ;
        cell.label1.clipsToBounds = YES ;
        cell.imageView2.image = image ;
    } else if(indexPath.section == 1) {
        NSArray *numArray = @[@" 0", @" 1", @"123"];
        NSArray *nameArray = @[@"动 态", @"关 注", @"粉 丝", @"编辑资料"];
        for(int i = 0; i < 3; i++) {
            UILabel *numlabel = [[UILabel alloc] init] ;
            numlabel.text = numArray[i];
            numlabel.font = [UIFont systemFontOfSize:18] ;
            numlabel.frame = CGRectMake(100 * i + 19, 5, 100, 30) ;
            [cell.arrayLabel addObject:numlabel] ;
            [cell.scroll addSubview:cell.arrayLabel[i]] ;
        }
        UIImage *write = [UIImage imageNamed:@"编辑.png"] ;
        cell.imageView3.image = write;
        for(int j = 0; j < 4; j++) {
            UILabel *namelabel = [[UILabel alloc] init] ;
            namelabel.text = nameArray[j];
            namelabel.font = [UIFont systemFontOfSize:12] ;
            namelabel.textColor = [UIColor grayColor] ;
            namelabel.frame = CGRectMake(100 * j + 19, 35, 100, 15);
            [cell.arrayLabel2 addObject:namelabel] ;
            [cell.scroll addSubview:cell.arrayLabel2[j]];
        }
    } else if(indexPath.section == 2) {
        cell.scroll.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width, 100);
        NSArray *Names = @[@" 消息", @" 商城", @" 演出", @"个性换肤"] ;
        for(int i = 0; i < 4; i++) {
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"ss%d.png", i + 1]] ;
            UIImageView *iView = [[UIImageView alloc] initWithImage:image] ;
            iView.frame = CGRectMake(100 * i + 19, 5, 35, 35) ;
            [cell.arrayImage addObject:iView];
            UILabel *label = [[UILabel alloc] init] ;
            label.text = Names[i] ;
            label.font = [UIFont systemFontOfSize:15] ;
            label.frame = CGRectMake(100 * i + 19, 45, 70, 30) ;
            [cell.arrayLabel addObject:label] ;
            [cell.scroll addSubview: cell.arrayLabel[i]] ;
            [cell.scroll addSubview: cell.arrayImage[i]] ;
        }
    } else if(indexPath.section == 3) {
        cell.label.text = oneNames[indexPath.row] ;
        cell.label.font = [UIFont systemFontOfSize:15] ;
        cell.label.frame = CGRectMake(30, 0, 80, 25) ;
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"f%ld.png", indexPath.row + 1]];
        cell.imageView1.image = image ;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    } else {
        NSArray *twoNames = @[@"设置", @"夜间模式", @"定时关闭", @"音乐闹钟", @"我要直播"];
        cell.label.text = twoNames[indexPath.row] ;
        cell.label.font = [UIFont systemFontOfSize:15] ;
        if(indexPath.row == 1) {
            UISwitch *mySwitch = [[UISwitch alloc] init] ;
            mySwitch.frame = CGRectMake(340, 10, 0, 0) ;
            [mySwitch setOn:NO animated:YES] ;
            [cell.arraySwitch addObject:mySwitch];
            [cell.contentView addSubview:cell.arraySwitch[0]] ;
        }
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"ff%ld.png", indexPath.row + 1]] ;
        cell.imageView1.image = image ;
        if(indexPath.row != 1) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
    }
    return cell;
}

-(void) pressArrive:(UIButton *)btn {
    UIImage *arrivedImage = [UIImage imageNamed:@"签到1.png"] ;
    [btn setImage:arrivedImage forState:UIControlStateNormal] ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 1 || section == 2 || section == 0) {
        return 1;
    } else if (section == 3) {
        return 4;
    } else {
        return 5;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0) {
        return 100;
    } else if (indexPath.section == 1){
        return 70;
    } else if (indexPath.section == 2){
        return 100;
    } else {
        return 45;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if(section == 3 || section == 4) {
        return @" ";
    } else {
        return @"";
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if(section == 0 || section == 1 || section == 2) {
        return 0;
    } else {
        return 15;
    }
}

- (void)viewWillAppear:(BOOL)animated {
    self.hidesBottomBarWhenPushed = YES;
    
}

- (void)viewWillDisappear:(BOOL)animated {
    self.hidesBottomBarWhenPushed = NO;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

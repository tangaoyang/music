//
//  ThreeViewController.m
//  网易云音乐
//
//  Created by cinderella on 2019/7/26.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "ThreeViewController.h"
#import "TAYTableViewCell.h"
#import "oViewController.h"

@interface ThreeViewController () {
    UITableView *tableView;
}

@end

NSArray *Sections;
NSArray *Names;
NSArray *Creats;
NSArray *Collects;
NSArray *NamesGroup;
NSMutableArray *selectedArr;//控制列表是否被打开
NSMutableDictionary *dataDic;

@implementation ThreeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //selectedArr = [[NSMutableArray alloc] init] ;
    
    UITabBarItem* tarBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:nil tag:103];
    tarBarItem.image = [[UIImage imageNamed:@"3.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tarBarItem.selectedImage = [[UIImage imageNamed:@"a3.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tarBarItem;
    
    Sections = @[@" ", @"Names", @"Creats", @"Collects"] ;
    NamesGroup = @[@" ", @" ", @"我喜欢的歌单", @"我收藏的歌单"] ;
    Names = @[@"本地音乐", @"最近播放", @"我的电台", @"我的收藏"] ;
    Creats = @[@"我喜欢的音乐", @"翻唱"];
    Collects = @[@"T.", @"A.", @"Y.", @"000"] ;
    
    //dataDic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:Names,[NamesGroup objectAtIndex:0], Creats, [NamesGroup objectAtIndex:1], Collects, [NamesGroup objectAtIndex:2],nil];
    
    self->tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 55, 414, 640) style:UITableViewStylePlain] ;
    [self.view addSubview:tableView] ;
    
    tableView.delegate = self;
    tableView.dataSource = self;
    
    //UILabel *Head = [[UILabel alloc] init];
    self.title = @"我的音乐";
    //Head.textAlignment = NSTextAlignmentCenter;
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(370, 142, 12, 12)] ;
    label1.text = @"0" ;
    label1.textColor = [UIColor grayColor] ;
    label1.font = [UIFont systemFontOfSize:12] ;
    [tableView addSubview: label1] ;
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(360, 195, 50, 12)] ;
    label2.text = @"222" ;
    label2.textAlignment = NSTextAlignmentLeft ;
    label2.textColor = [UIColor grayColor] ;
    label2.font = [UIFont systemFontOfSize:12] ;
    [tableView addSubview: label2] ;
    
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(360, 251, 50, 12)] ;
    label3.text = @"215" ;
    label3.textAlignment = NSTextAlignmentLeft ;
    label3.textColor = [UIColor grayColor] ;
    label3.font = [UIFont systemFontOfSize:12] ;
    [tableView addSubview: label3] ;
    
    UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(370, 307, 24, 12)] ;
    label4.text = @"5" ;
    label4.textAlignment = NSTextAlignmentLeft ;
    label4.textColor = [UIColor grayColor] ;
    label4.font = [UIFont systemFontOfSize:12] ;
    [tableView addSubview: label4] ;
    
    UIImage *imageYun = [UIImage imageNamed:@"yun.png"] ;
    UIBarButtonItem *_btnYun = [[UIBarButtonItem alloc] initWithImage:imageYun style:UIBarButtonItemStylePlain target:self action:@selector(pressBtnYun)] ;
    self.navigationItem.leftBarButtonItem = _btnYun ;
    
    UIImage *imageLan = [UIImage imageNamed:@"lan.png"] ;
    UIBarButtonItem *_btnLan = [[UIBarButtonItem alloc] initWithImage:imageLan style:UIBarButtonItemStylePlain target:self action:@selector(pressBtnLan)] ;
    self.navigationItem.rightBarButtonItem = _btnLan ;
    
    [tableView registerClass:[TAYTableViewCell class] forCellReuseIdentifier:@"123"];
    
}

- (void)pressBtnYun {
    oViewController *one = [[oViewController alloc] init] ;
    [self.navigationController pushViewController:one animated:NO] ;
}

- (void)pressBtnLan {
    oViewController *one = [[oViewController alloc] init] ;
    [self.navigationController pushViewController:one animated:NO] ;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if(section == 0|| section == 1) {
        return 0;
    }else {
        return 30;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
        return 0;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 0){
        return 1;
    }else if (section == 1) {
        return [Names count];
    }else if (section == 2){
        return [Creats count];
    }else{
        return [Collects count];
    }
}

- (UITableView *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TAYTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"123" forIndexPath:indexPath] ;
    
    //超出父视图不显示，如果不将其值设为YES（默认为NO），那么现实在表格视图上的数据会出现重叠的bug。
    //cell.layer.masksToBounds = YES;
    
    //弃掉选中框背景色
    cell.selectedBackgroundView = [[UIView alloc] init];
    cell.multipleSelectionBackgroundView = [[UIView alloc] initWithFrame:cell.bounds];
    cell.multipleSelectionBackgroundView.backgroundColor = [UIColor clearColor];
    
    
    //NSString *indexStr = [NSString stringWithFormat:@"%ld",(long)indexPath.section];
     //NSString *str=[NamesGroup objectAtIndex:indexPath.section];
     //NSArray *arr=[dataDic objectForKey:str];
     
     //只需要给当前分组展开的section 添加用户信息即可
     //if ([selectedArr containsObject:indexStr]) {
        //NSDictionary *dic=[arr objectAtIndex:indexPath.row];
    if(indexPath.section == 0) {
        cell.scroll.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width * 1.25, 100);
        cell.scroll.pagingEnabled = YES ;
        cell.scroll.showsHorizontalScrollIndicator = YES;
        NSArray *SName = @[@"私人FM", @"最新电音", @"Sati空间", @"私藏推荐", @"亲子频道"] ;
        for(int i = 0; i < 5 ;i++) {
            UILabel *label = [[UILabel alloc] init];
            label.text = SName[i] ;
            label.font = [UIFont systemFontOfSize:12] ;
            label.frame = CGRectMake(100 * i, 90, 80, 10) ;
            label.textAlignment = NSTextAlignmentCenter ;
            UIImage* image = [UIImage imageNamed:[NSString stringWithFormat:@"s%d.png", i + 1]] ;
            UIImageView* iView = [[UIImageView alloc] initWithImage:image] ;
            [cell.arrayLabel addObject:label] ;
            [cell.arrayImage addObject:iView] ;
            iView.frame = CGRectMake(100 * i, 10, 80, 80) ;
            [cell.scroll addSubview: cell.arrayImage[i]] ;
            [cell.scroll addSubview: cell.arrayLabel[i]] ;
        }
    }else if(indexPath.section == 1) {
        cell.label.text = Names[indexPath.row] ;
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat: @"k%ld.png", indexPath.row + 1]] ;
        cell.imageView.image = image ;
        // 设置列的按钮类型
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    } else if (indexPath.section == 2) {
        //if ([selectedArr containsObject:indexStr]) {
            //NSDictionary *dic=[arr objectAtIndex:indexPath.row];
        cell.label.text = Creats[indexPath.row] ;
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat: @"t%ld.jpg", indexPath.row + 1]] ;
        cell.imageView.image = image ;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.separatorInset = UIEdgeInsetsMake(0, 0, 0, cell.bounds.size.width);
    } else {
        //if ([selectedArr containsObject:indexStr]) {
            //NSDictionary *dic=[arr objectAtIndex:indexPath.row];
        cell.label.text = Collects[indexPath.row] ;
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat: @"n%ld.jpg", indexPath.row + 1]] ;
        cell.imageView.image = image ;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.separatorInset = UIEdgeInsetsMake(0, 0, 0, cell.bounds.size.width);
    }
    // }
    return  cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
     // 根据当前组获取字典key
     /*NSString *key = [NSString stringWithFormat:@"%ld", indexPath.section];
     
     // 判断如果字典对应key是否有值，如果有值，说明当前组展开，返回 55高度；否则为关闭，返回 0 高度；
    if ([dataDic objectForKey:key] || indexPath.section == 0) {
         return 120;
     }else if([dataDic objectForKey:key] || indexPath.section == 1 || indexPath.section == 2 || indexPath.section == 3){
         return 55;
     } else {
         return 0;
     }*/
    if(indexPath.section == 0) {
        return 120;
    } else {
        return 55;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return NamesGroup[section] ;
}

/*
 -(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
     UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 414, 30)];
     if(section == 2 || section == 3) {
         view.backgroundColor=[UIColor whiteColor];
         UILabel *titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(30, 0, 414, 30)];
         titleLabel.text = [NamesGroup objectAtIndex:section];
         [view addSubview:titleLabel];

         UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 20, 20)];
         imageView.tag = 20000 + section;
         //更具当前是否展开设置图片
         NSString *string = [NSString stringWithFormat:@"%ld",(long)section];
         if ([selectedArr containsObject:string]) {
             imageView.image = [UIImage imageNamed:@"arrow_down.png"];
         }else{
             imageView.image = [UIImage imageNamed:@"arrow_right.png"];
         }
         [view addSubview:imageView];
 
         //添加一个button 用来监听点击分组，实现分组的展开关闭
         UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
         btn.frame = CGRectMake(0, 0, 414, 50);
         btn.tag = section;
         [btn addTarget:self action:@selector(btnOpenList:) forControlEvents:UIControlEventTouchDown];
         [view addSubview:btn];
     }
     return view;
 }

 -(void)btnOpenList:(UIButton *)sender{
 NSString *string = [NSString stringWithFormat:@"%ld", sender.tag];
 
     //数组selectedArr里面存的数据和表头想对应，方便以后做比较
     if ([selectedArr containsObject:string]){
         [selectedArr removeObject:string];
     }else{
         [selectedArr addObject:string];
         NSLog(@"%@", selectedArr[0]) ;
     }
 
     [tableView reloadData];
     
     
 }*/
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

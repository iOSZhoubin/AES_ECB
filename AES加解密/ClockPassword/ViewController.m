//
//  ViewController.m
//  ClockPassword
//
//  Created by 全栈会 on 2021/11/5.
//

#import "ViewController.h"
#import "AESCipher.h"

@interface ViewController ()

@property (strong,nonatomic) UIButton *lock;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lock = [[UIButton alloc]initWithFrame:CGRectMake(10, 80, 200, 50)];
    
    [self.lock setTitle:@"加密" forState:UIControlStateNormal];
    
    [self.lock setBackgroundColor:[UIColor systemBlueColor]];
    
    
    [self.lock addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.lock];
}


-(void)clickAction
{
    NSLog(@"加密");
    
    NSString *plainText = @"1.2.11|us|com.whooshapps.whooshvpn|23d6c00c7ab1e313|1";
    NSString *key = @"bgfDwjGrxnE2n9yd";
    
    NSString *cipherText = aesEncryptString(plainText, key);

    NSLog(@"%@", cipherText);

    NSString *decryptedText = aesDecryptString(cipherText, key);

    NSLog(@"%@", decryptedText);

}



@end

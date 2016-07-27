//
//  OPAYPaymentAuthorizationProcess.m
//  iOS_SDK
//
//  Created by Sachin Barage on 09/10/15.
//  Copyright © 2015 OptimalPayments. All rights reserved.
//

#import <Availability.h>
#import "iOS_imageSDK.h"



#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)


@interface iOS_imageSDK ()  <UIViewControllerTransitioningDelegate,NSURLConnectionDelegate>
{
    NSURLConnection *connection;
    
    NSDictionary *merchantCartDictonary;
    NSDictionary *shippingMethodData;
    BOOL isHavingStubs;
    NSDictionary *envSettingDict;
}

@property(nonatomic, assign)id<PKPaymentAuthorizationViewControllerDelegate>pkDelegate;

@property (strong) NSData *paymentTokenData;
@property (nonatomic) NSDecimalNumber *amount;


// URL ///
@property (retain, nonatomic) NSMutableData *responseData;
@property (retain, nonatomic) NSString *baseURL;
@property (retain) id requestData;

@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property(nonatomic , retain) UIView *optViewController;


@end

@implementation iOS_imageSDK
@synthesize authDelegate,amount;
@synthesize responseData,baseURL,requestData;
@synthesize activityIndicator,optViewController;


- (id)initWithMerchantIdentifier:(NSString*)merchantIdentifier withMerchantID:(NSString*)optiMerchantID withMerchantPwd:(NSString*)optiMerchantPwd withMerchantCountry:(NSString*)merchantCountry withMerchantCurrency:(NSString*)merchantCurrency
{
    // Set the data for all objects !!!
    
//    OPAYDef.merchantUserID=optiMerchantID;
//    OPAYDef.merchantPassword=optiMerchantPwd;
//    
//    OPAYDef.merchantIdentifier=merchantIdentifier;
//    OPAYDef.countryCode=merchantCountry;
//    OPAYDef.currencyCode=merchantCurrency;
    
    return self;
}

- (BOOL)isApplePaySupport
{
    /* If we are running the app in Device this method retuns TRUE.
     If we are running the simulator it returns FALSE.
     */
    
    BOOL isOk = false;

    return isOk;
}

- (BOOL)canHaveValidNetworks{
    
    /* If we are running the app in Device & we have valid/apple verified Amex, MasterCard and
     Visa cards available in Device passbook ( for apple pay ) then this method retuns TRUE.
     If we are running the simulator it returns FALSE.
     */
    NSArray *SupportedPaymentNetworks = @[PKPaymentNetworkAmex, PKPaymentNetworkMasterCard, PKPaymentNetworkVisa];
    return [PKPaymentAuthorizationViewController canMakePaymentsUsingNetworks:SupportedPaymentNetworks];
}

-(void)beginPayment:(UIViewController *)viewController withRequestData:(NSDictionary*)dataDictionary withCartData:(NSDictionary*)cartData
{
    optViewController=viewController.view;

}




///////////// Non Apple Flow /////////////////
-(void)beginNonApplePayment:(UIViewController *)viewController withRequestData:(NSDictionary*)requestNAPData withEnvSettingDict:(NSDictionary*)envSettingData
{

}

/////////// End ///////////////
///////////// FOR OPTIMAL VAULT CONNECTION   //////////

- (void)requestServiceByName:(NSString *)serviceName
{
   
}


- (void)callBackResponseFromOPAYMockSDK:(NSDictionary*)response
{
    [self.authDelegate callBackResponseFromOPTSDK:response];
}

//////// ANIMATION ///////////
-(void)showActivityViewer
{
    self.activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [optViewController addSubview:activityIndicator];
    self.activityIndicator.center = CGPointMake(optViewController.frame.size.width / 2, optViewController.frame.size.height / 2);
    [self.activityIndicator startAnimating];
}

-(void)hideActivityViewer
{
    [self.activityIndicator stopAnimating];
    activityIndicator=nil;
    optViewController=nil;
}

@end

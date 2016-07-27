//
//  OPAYPaymentAuthorizationProcess.h
//  iOS_SDK
//
//  Created by Sachin Barage on 09/10/15.
//  Copyright © 2015 OptimalPayments. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PassKit/PassKit.h>



@protocol OPAYPaymentAuthorizationProcessDelegate<NSObject>

@required

- (void)callBackResponseFromOPTSDK:(NSDictionary*)response;

-(void)callNonAppleFlowFromOPTSDK;
@end;

@interface iOS_imageSDK : NSObject <NSURLConnectionDelegate,PKPaymentAuthorizationViewControllerDelegate>

@property(nonatomic, assign)id<OPAYPaymentAuthorizationProcessDelegate>authDelegate;


- (id)initWithMerchantIdentifier:(NSString*)merchantIdentifier withMerchantID:(NSString*)optiMerchantID withMerchantPwd:(NSString*)optiMerchantPwd withMerchantCountry:(NSString*)merchantCountry withMerchantCurrency:(NSString*)merchantCurrency;

- (void)beginPayment:(UIViewController *)viewController withRequestData:(NSDictionary*)dataDictionary withCartData:(NSDictionary*)cartData;


-(void)beginNonApplePayment:(UIViewController *)viewController withRequestData:(NSDictionary*)requestNAPData withEnvSettingDict:(NSDictionary*)envSettingData;

- (BOOL)isApplePaySupport;


@end
// Autogenerated from Pigeon (v20.0.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

@class Token;
@class HostInfo;

@interface Token : NSObject
+ (instancetype)makeWithAccessToken:(nullable NSString *)accessToken
    refreshToken:(nullable NSString *)refreshToken;
@property(nonatomic, copy, nullable) NSString * accessToken;
@property(nonatomic, copy, nullable) NSString * refreshToken;
@end

@interface HostInfo : NSObject
+ (instancetype)makeWithAppName:(nullable NSString *)appName
    locale:(nullable NSString *)locale;
@property(nonatomic, copy, nullable) NSString * appName;
@property(nonatomic, copy, nullable) NSString * locale;
@end

/// The codec used by all APIs.
NSObject<FlutterMessageCodec> *nullGetApiCodec(void);

@interface ManiAuthApi : NSObject
- (instancetype)initWithBinaryMessenger:(id<FlutterBinaryMessenger>)binaryMessenger;
- (instancetype)initWithBinaryMessenger:(id<FlutterBinaryMessenger>)binaryMessenger messageChannelSuffix:(nullable NSString *)messageChannelSuffix;
- (void)sendHostInfo:(HostInfo *)hostInfo completion:(void (^)(FlutterError *_Nullable))completion;
@end


@protocol HostAppApi
- (void)cancelWithError:(FlutterError *_Nullable *_Nonnull)error;
- (void)authSuccessToken:(Token *)token error:(FlutterError *_Nullable *_Nonnull)error;
@end

extern void SetUpHostAppApi(id<FlutterBinaryMessenger> binaryMessenger, NSObject<HostAppApi> *_Nullable api);

extern void SetUpHostAppApiWithSuffix(id<FlutterBinaryMessenger> binaryMessenger, NSObject<HostAppApi> *_Nullable api, NSString *messageChannelSuffix);

NS_ASSUME_NONNULL_END


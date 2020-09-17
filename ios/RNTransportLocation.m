#import "RNTransportLocation.h"
#import <MapManager/MapManager.h>


@implementation RNTransportLocation

MapService *mapService;

-(instancetype)init
{
    self = [super init];
    if(self){
        mapService = [[MapService alloc] init];
    }
    return self;
}

+(BOOL)requiresMainQueueSetup
{
    return YES;
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(init:(NSString *)appId
                  appSecurity:(NSString *)appSecurity
                  enterpriseSenderCode:(NSString *)enterpriseSenderCode
                  environment:(NSString *)environment
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
{
    [mapService openServiceWithAppId:appId appSecurity:appSecurity enterpriseSenderCode:enterpriseSenderCode environment:environment listener:^(id  model, NSError * error) {
        resolve(model);
    }];
}

RCT_EXPORT_METHOD(start: (NSArray *)shippingNoteInfos
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
{
    [mapService startLocationWithShippingNoteInfos:shippingNoteInfos listener:^(id  _Nonnull model, NSError * _Nonnull error) {
        resolve(model);
    }];
}

RCT_EXPORT_METHOD(stop :(NSArray *)shippingNoteInfos
                resolve:(RCTPromiseResolveBlock)resolve
                reject:(RCTPromiseRejectBlock)reject)
{
    [mapService stopLocationWithShippingNoteInfos:shippingNoteInfos listener:^(id  _Nonnull model, NSError * _Nonnull error) {
        resolve(model);
    }];
}

@end

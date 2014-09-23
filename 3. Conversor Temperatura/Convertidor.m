#import "Convertidor.h"

@implementation Convertidor

-(NSString *)convertCtoF:(float)value{
    farenheit = value*9/5+32;
    return [NSString stringWithFormat:@" %.02f ºF", farenheit];
}
-(NSString *)convertCtoK:(float)value{
    kelvin = value +273.15;
    return [NSString stringWithFormat:@" %.02f ºK", kelvin];

}

-(NSString *)convertKtoF:(float)value{
    farenheit = (value - 273.15)*1.8+32;
    return [NSString stringWithFormat:@" %.02f ºF", farenheit];
}
@end

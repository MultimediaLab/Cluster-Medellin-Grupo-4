#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "MiPunto.h"

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>
{
    
    MiPunto * medellin;

}

- (IBAction)changeMap:(id)sender;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end


#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface Empleados : NSObject
{
    sqlite3 * empleadosdb;
}

@property NSString * empId;
@property NSString * empName;
@property NSString * empCedula;
@property NSString * empJob;
@property NSString * empPhone;
@property NSString * empAdress;

@property NSString * status;

-(void)searchPathOfDatabase;
-(void)createDatabaseInDocuments;

//Adicionar
-(void)insertEmployedInDatabase;

//Buscar
-(void)searchEmployedInDatabase;

@end

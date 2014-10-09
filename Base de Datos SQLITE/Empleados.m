
#import "Empleados.h"

@interface Empleados ()
@property NSString * databasePath;
@end

@implementation Empleados

const char * dbpath;

-(void)searchPathOfDatabase{
    NSString * rutaFolderDoc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    _databasePath = [rutaFolderDoc stringByAppendingPathComponent:@"empleados.db"];
    dbpath = [_databasePath UTF8String];
    NSLog(@"%s", dbpath);
}
-(void)createDatabaseInDocuments{
    [self searchPathOfDatabase];
    NSFileManager * fm = [[NSFileManager alloc] init];
    if ([fm fileExistsAtPath:_databasePath]==NO) {
        if (sqlite3_open(dbpath, &empleadosdb)==SQLITE_OK) {
            NSLog(@"La base de datos se creo exitosamente!!!");
            char * error;
            const char * sql_tabla = "CREATE TABLE IF NOT EXISTS Empleados (ID INTEGER PRIMARY KEY AUTOINCREMENT, EMP_NAME TEXT, EMP_CEDULA TEXT, EMP_CARGO TEXT, EMP_PHONE TEXT, EMP_ADRESS TEXT)";
            if (sqlite3_exec(empleadosdb, sql_tabla, NULL, NULL, &error)==SQLITE_OK) {
                NSLog(@"Tabla Creada Exitosamente");
            }else{
                NSLog(@"Erorr en SQL");
            }
            sqlite3_close(empleadosdb);
        }else{
            NSLog(@"La base de datos no se pudo crear");
        }
    }else{
        NSLog(@"La base de datos ya existe!!.");
    }
}

-(void)insertEmployedInDatabase{
    [self searchPathOfDatabase];
    sqlite3_stmt * query;
    if (sqlite3_open(dbpath, &empleadosdb)==SQLITE_OK) {
        NSString * insert = [NSString stringWithFormat:@"INSERT INTO Empleados (EMP_NAME, EMP_CEDULA, EMP_CARGO, EMP_PHONE, EMP_ADRESS) VALUES (\"%@\",\"%@\", \"%@\", \"%@\",\"%@\")", _empName, _empCedula, _empJob, _empPhone, _empAdress];
        const char * insertsql = [insert UTF8String];
        sqlite3_prepare_v2(empleadosdb, insertsql, -1, &query, NULL);
        if (sqlite3_step(query)==SQLITE_DONE) {
            _status = @"Empleado Almacenado Exitosamente!!";
        }else{
            _status = @"Error en almacenar empleado";
        }
        sqlite3_finalize(query);
        sqlite3_close(empleadosdb);
    }else{
        NSLog(@"No se pudo abrir la base de datos");
    }
}
-(void)searchEmployedInDatabase{
    [self searchPathOfDatabase];
    sqlite3_stmt * query;
    if (sqlite3_open(dbpath, &empleadosdb)==SQLITE_OK) {
        NSString * select = [NSString stringWithFormat:@"SELECT * FROM  Empleados WHERE EMP_CEDULA = \"%@\"", _empCedula];
        const char * selectsql = [select UTF8String];
        if (sqlite3_prepare_v2(empleadosdb, selectsql, -1, &query, NULL)==SQLITE_OK) {
            if (sqlite3_step(query)==SQLITE_ROW) {
                _status = @"Empleado encontrado";
                _empId = [NSString stringWithFormat:@"%s", sqlite3_column_text(query, 0)];
                _empName = [NSString stringWithFormat:@"%s", sqlite3_column_text(query, 1)];
                _empCedula = [NSString stringWithFormat:@"%s", sqlite3_column_text(query, 2)];
                _empJob = [NSString stringWithFormat:@"%s", sqlite3_column_text(query, 3)];
                _empPhone = [NSString stringWithFormat:@"%s", sqlite3_column_text(query, 4)];
                _empAdress = [NSString stringWithFormat:@"%s", sqlite3_column_text(query, 5)];
            }
        }
        sqlite3_finalize(query);
        sqlite3_close(empleadosdb);
    }
}
@end

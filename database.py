#Psycopg2 is the most popular PostgreSQL database adapter for the Python programming language
import psycopg2 

#method for opening a connection with postgres database
def connection():
    try:
        #opening a connection by passing postgres database configurations
        connection = psycopg2.connect(user="postgres",
                                  password="xxxxxx",
                                  host="127.0.0.1",
                                  port="5432",
                                  database="postgres")
        #returns the connection 
        return connection
    #if the above connection is not successful, an expection will be thrown
    except (Exception, psycopg2.Error) as error :
        print ("Error while establishing a PostgreSQL connection: ", error)

#this method takes dbConnection as an argument and closes that particular dbConnection       
def disConnection(dbConnection):
    #closing database connection.
    if(dbConnection):
        #If the dbConnection exists closing the database connection
        dbConnection.close()
        print("PostgreSQL connection is closed")

#Allows Python code to execute PostgreSQL command in a database session.
# Cursors are created by the connection.cursor() method: they are bound to the connection for the entire lifetime 
#and all the commands are executed in the context of the database session wrapped by the connection.
 
#This method takes dbConnection queryId, queryValue as arguments and queries the records       
def recordQuery(dbConnection, queryId, queryValue):
    try:
        #opening a cursor from a dbConnection
        cursor = dbConnection.cursor()
        #creating a query string by using the queryId and queryValue from the arguments
        queryString = "SELECT * FROM public.python_project_2019 WHERE " + queryId + " = " + queryValue
        #executing the above query string in the cursor
        cursor.execute(queryString)
        #fetching the result from the cursor
        records = cursor.fetchall() 
        #returns the records 
        return records

    #If the above cursor query executions is not successful an exception will be thrown
    except (Exception, psycopg2.Error) as error :
        print ("Error while fetching data from PostgreSQL", error)

    finally:
        if(cursor):
            #if the cursor is open clsoing the cursor
            cursor.close()
            print("PostgreSQL cursor is closed")  

#This method takes dbConnection and registrationObj as arguments and inserts the record in the database   
def recordInsertion(dbConnection, registrationObj):
    try:
        #opening a cursor from a dbConnection
        cursor = dbConnection.cursor()
        #executing the insert query string with the registration object in the cursor
        cursor.execute("INSERT INTO public.python_project_2019 (id, last_name, first_name,course1_id, course1_title,course2_id, course2_title,course3_id, course3_title,is_undergrad) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", (registrationObj.studentId,registrationObj.lastName,registrationObj.firstName,registrationObj.course1Id,registrationObj.course1Title,registrationObj.course2Id,registrationObj.course2Title,registrationObj.course3Id,registrationObj.course3Title,registrationObj.isUnderGrad))
        #committing the above insert operation
        dbConnection.commit()
        #assigning status to true
        status = True

    #If the cursor insert query execution is not successful an exception will be thrown
    except (Exception, psycopg2.Error) as error :
        print ("Error while fetching data from PostgreSQL", error)
        #assigning status to false
        status =  False

    finally:
        if(cursor):
            #if the cursor is open closing the cursor
            cursor.close()
            #returns the status
            return status
            print("PostgreSQL cursor is closed")     
        
#This method takes dbConnection and registrationObj as arguments and updates the record in the database   
def recordUpdate(dbConnection, registrationObj):   
    try:
        #opening a cursor from a dbConnection
        cursor = dbConnection.cursor() 
        #executing the update query string with the registration object in the cursor
        cursor.execute("UPDATE public.python_project_2019 SET last_name = %s,first_name = %s,course1_id = %s,course1_title = %s,course2_id = %s,course2_title = %s, course3_id = %s, course3_title = %s,is_undergrad = %s WHERE id = %s", (registrationObj.lastName,registrationObj.firstName,registrationObj.course1Id,registrationObj.course1Title,registrationObj.course2Id,registrationObj.course2Title,registrationObj.course3Id,registrationObj.course3Title,registrationObj.isUnderGrad, registrationObj.studentId))
        #committing the above update operation
        dbConnection.commit()
        #assigning status to true
        status = True

    #If the cursor update query execution is not successful an exception will be thrown
    except (Exception, psycopg2.Error) as error :
        print ("Error while fetching data from PostgreSQL", error)
        #assigning status to false
        status =  False

    finally:
        if(cursor):
            #if the cursor is open clsoing the cursor
            cursor.close()
            #returns the status
            return status
            print("PostgreSQL cursor is closed")
            
#This method takes dbConnection and registrationObj as arguments and deletes the record in the database  
def recordDelete(dbConnection, registrationObj):
    try:
        #opening a cursor from a dbConnection
        cursor = dbConnection.cursor() 
        #creating a query string by using the studentId of registrationObj from the arguments
        queryString = "DELETE FROM public.python_project_2019 WHERE id = " + registrationObj.studentId
        #executing the above query string in the cursor
        cursor.execute(queryString)
        #committing the above delete operation
        dbConnection.commit()
        #assigning status to true
        status = True

    #If the cursor update query execution is not successful an exception will be thrown
    except (Exception, psycopg2.Error) as error :
        print ("Error while fetching data from PostgreSQL", error)
        #assigning status to false
        status =  False

    finally:
        if(cursor):
            #if the cursor is open clsoing the cursor
            cursor.close()
            #returns the status
            return status
            print("PostgreSQL cursor is closed")


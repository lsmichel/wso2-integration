import ballerina/http;
import business;

public function StoreUserLoginByUsernameAndPassword (http:Request req, string username, string password) returns http:Response {
http:Response _StoreUserLoginByUsernameAndPasswordPutRes = new;
string  usrnameParam = untaint username;
string  passwordParam = untaint password;
string carbon_aut_response = business:Connection(usrnameParam , passwordParam);
string _StoreUserLoginByUsernameAndPasswordPutPayload = "Sample StoreUserLoginByUsernameAndPasswordPut Response";
_StoreUserLoginByUsernameAndPasswordPutRes.setJsonPayload(carbon_aut_response);
return _StoreUserLoginByUsernameAndPasswordPutRes;
}

public function StoreUserGetAllApplocationByUsername (http:Request req, string username, string password) returns http:Response {
    //stub code - fill as necessary
    http:Response resp = new;
    string payload = "Sample StoreUserGetAllApplocationByUsername Response";
    resp.setTextPayload(payload);

	return resp;
}

public function StoreUserApplicationIsexistByUsername (http:Request req, string username, string password, string application) returns http:Response {
    //stub code - fill as necessary
    http:Response resp = new;
    string payload = "Sample StoreUserApplicationIsexistByUsername Response";
    resp.setTextPayload(payload);

	return resp;
}

public function StoreUserApplicationDeleteByUsername (http:Request req, string username, string password, string application) returns http:Response {
    //stub code - fill as necessary
    http:Response resp = new;
    string payload = "Sample StoreUserApplicationDeleteByUsername Response";
    resp.setTextPayload(payload);

	return resp;
}

public function StoreUserApplicationCreateByUsername (http:Request req, string username, string password, string application) returns http:Response {
    //stub code - fill as necessary
    http:Response resp = new;
    string payload = "Sample StoreUserApplicationCreateByUsername Response";
    resp.setTextPayload(payload);

	return resp;
}

public function StoreUserApplicationGetAllSupscrion (http:Request req, string username, string password, string application) returns http:Response {
    //stub code - fill as necessary
    http:Response resp = new;
    string payload = "Sample StoreUserApplicationGetAllSupscrion Response";
    resp.setTextPayload(payload);

	return resp;
}

public function StoreUserApplicationApiContextVersionSubscrib (http:Request req, string username, string password, string application, string api, string context, string apiVersion) returns http:Response {
    //stub code - fill as necessary
    http:Response resp = new;
    string payload = "Sample StoreUserApplicationApiContextVersionSubscrib Response";
    resp.setTextPayload(payload);

	return resp;
}

public function StoreUserApplicationApiContextVersionUnsuscrib (http:Request req, string username, string password, string application, string api, string context, string apiVersion) returns http:Response {
    //stub code - fill as necessary
    http:Response resp = new;
    string payload = "Sample StoreUserApplicationApiContextVersionUnsuscrib Response";
    resp.setTextPayload(payload);

	return resp;
}

public function StoreUserApplicationPublishGetAllPublishedApi (http:Request req, string username, string password, string application) returns http:Response {
    //stub code - fill as necessary
    http:Response resp = new;
    string stor_all_published_ApiResponse = business:GetAllPublishedAPIs();
    string payload = "Sample StoreUserApplicationPublishGetAllPublishedApi Response";
    resp.setJsonPayload(stor_all_published_ApiResponse);

	return resp;
}


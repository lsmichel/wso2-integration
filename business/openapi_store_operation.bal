import ballerina/http;
import ballerina/log;
import ballerina/io;
endpoint http:Client clientEndpoint {
   url: "http://10.241.224.153:9763/store/site/blocks/user/login/ajax"
};
endpoint http:Client clientApiEndpoint {
   url: "http://10.241.224.153:9763/store/site/blocks/api/listing/ajax"
};

public function Connection (string  username , string password) returns (string) {
   http:Request req = new;
   string requesturi="/login.jag";
   string uriset = string `/login.jag?action=login&username={{username}}&password={{password}}`;
   var response = clientEndpoint->post(uriset, request = req);
   match response {
      http:Response resp => {
         log:printInfo("\nPUT request:");
         var msg = resp.getJsonPayload();
         match msg {
            json jsonPayload => {
               json jsonresponse = check <json>msg;
               return jsonresponse.toString();
            }
            error err => {
               log:printError(err.message, err = err);
               json jsonErr = {
                                "erreur": err.message
                              };
               return jsonErr.toString();
            }
         }
      }
      error err => { log:printError(err.message, err = err); return ""; }
   }
}

public function GetAllPublishedAPIs () returns (string) {
   http:Request req = new;
   string requesturi="/list.jag?action=getAllPaginatedPublishedAPIs&tenant=carbon.super&start=1&end=100";
   //Connection(username, password);
   var response = clientApiEndpoint->get(requesturi, request = req);
   match response {
      http:Response resp => {
         log:printInfo("\nPUT request:");
         var msg = resp.getJsonPayload();
         match msg {
            json jsonPayload => {
               json jsonresponse = check <json>msg;
               return jsonresponse.toString();
            }
            error err => {
              // log:printError(err.message, err = err);
               json jsonErr = {
                  "erreur": "erreur"
               };
               return jsonErr.toString();
            }
         }
      }
      error err => { log:printError(err.message, err = err); return ""; }
   }
}
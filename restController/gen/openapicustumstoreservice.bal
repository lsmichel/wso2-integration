import ballerina/log;
import ballerina/http;
import ballerina/swagger;
import ballerinax/docker;

endpoint http:Listener ep0 { 
    port: 9090
};
@docker:Config {
    name:"testdocker",
    tag:"v1.0"
}

@swagger:ServiceInfo { 
    title: "OpenApiCustumStoreService",
    serviceVersion: "1.beta"
}
@http:ServiceConfig {
    basePath: "/"
}
service OpenApiCustumStoreService bind ep0 {

    @swagger:ResourceInfo {
        summary: "StoreUserLoginByUsernameAndPassword",
        tags: ["store"],
        parameters: [
            {
                name: "username",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "password",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            }
        ]
    }
    @http:ResourceConfig { 
        methods:["PUT"],
        path:"/store/user/{username}/{password}/login"
    }
    StoreUserLoginByUsernameAndPassword (endpoint outboundEp, http:Request req, string username, string password) {
        http:Response res = StoreUserLoginByUsernameAndPassword(req, username, password);
        outboundEp->respond(res) but { error e => log:printError("Error while responding", err = e) };
    }

    @swagger:ResourceInfo {
        summary: "StoreUserGetAllApplocationByUsername",
        tags: ["store"],
        parameters: [
            {
                name: "username",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "password",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            }
        ]
    }
    @http:ResourceConfig { 
        methods:["GET"],
        path:"/store/user/{username}/{password}/getAllApplocation"
    }
    StoreUserGetAllApplocationByUsername (endpoint outboundEp, http:Request req, string username, string password) {
        http:Response res = StoreUserGetAllApplocationByUsername(req, username, password);
        outboundEp->respond(res) but { error e => log:printError("Error while responding", err = e) };
    }

    @swagger:ResourceInfo {
        summary: "StoreUserApplicationIsexistByUsername",
        tags: ["store"],
        parameters: [
            {
                name: "username",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "password",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "application",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            }
        ]
    }
    @http:ResourceConfig { 
        methods:["POST"],
        path:"/store/user/{username}/{password}/{application}/isexist"
    }
    StoreUserApplicationIsexistByUsername (endpoint outboundEp, http:Request req, string username, string password, string application) {
        http:Response res = StoreUserApplicationIsexistByUsername(req, username, password, application);
        outboundEp->respond(res) but { error e => log:printError("Error while responding", err = e) };
    }

    @swagger:ResourceInfo {
        summary: "StoreUserApplicationDeleteByUsername",
        tags: ["store"],
        parameters: [
            {
                name: "username",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "password",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "application",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            }
        ]
    }
    @http:ResourceConfig { 
        methods:["DELETE"],
        path:"/store/user/{username}/{password}/{application}/delete"
    }
    StoreUserApplicationDeleteByUsername (endpoint outboundEp, http:Request req, string username, string password, string application) {
        http:Response res = StoreUserApplicationDeleteByUsername(req, username, password, application);
        outboundEp->respond(res) but { error e => log:printError("Error while responding", err = e) };
    }

    @swagger:ResourceInfo {
        summary: "StoreUserApplicationCreateByUsername",
        tags: ["store"],
        parameters: [
            {
                name: "username",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "password",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "application",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            }
        ]
    }
    @http:ResourceConfig { 
        methods:["POST"],
        path:"/store/user/{username}/{password}/{application}/create"
    }
    StoreUserApplicationCreateByUsername (endpoint outboundEp, http:Request req, string username, string password, string application) {
        http:Response res = StoreUserApplicationCreateByUsername(req, username, password, application);
        outboundEp->respond(res) but { error e => log:printError("Error while responding", err = e) };
    }

    @swagger:ResourceInfo {
        summary: "StoreUserApplicationGetAllSupscrion",
        tags: ["store"],
        parameters: [
            {
                name: "username",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "password",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "application",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            }
        ]
    }
    @http:ResourceConfig { 
        methods:["GET"],
        path:"/store/user/{username}/{password}/{application}/getAllSupscrion"
    }
    StoreUserApplicationGetAllSupscrion (endpoint outboundEp, http:Request req, string username, string password, string application) {
        http:Response res = StoreUserApplicationGetAllSupscrion(req, username, password, application);
        outboundEp->respond(res) but { error e => log:printError("Error while responding", err = e) };
    }

    @swagger:ResourceInfo {
        summary: "StoreUserApplicationApiContextVersionSubscrib",
        tags: ["store"],
        parameters: [
            {
                name: "username",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "password",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "application",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "api",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "context",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "apiVersion",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            }
        ]
    }
    @http:ResourceConfig { 
        methods:["POST"],
        path:"/store/user/{username}/{password}/{application}/{api}/{context}/{apiVersion}/subscrib"
    }
    StoreUserApplicationApiContextVersionSubscrib (endpoint outboundEp, http:Request req, string username, string password, string application, string api, string context, string apiVersion) {
        http:Response res = StoreUserApplicationApiContextVersionSubscrib(req, username, password, application, api, context, apiVersion);
        outboundEp->respond(res) but { error e => log:printError("Error while responding", err = e) };
    }

    @swagger:ResourceInfo {
        summary: "StoreUserApplicationApiContextVersionUnsuscrib",
        tags: ["store"],
        parameters: [
            {
                name: "username",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "password",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "application",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "api",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "context",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "apiVersion",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            }
        ]
    }
    @http:ResourceConfig { 
        methods:["POST"],
        path:"/store/user/{username}/{password}/{application}/{api}/{context}/{apiVersion}/unsuscrib"
    }
    StoreUserApplicationApiContextVersionUnsuscrib (endpoint outboundEp, http:Request req, string username, string password, string application, string api, string context, string apiVersion) {
        http:Response res = StoreUserApplicationApiContextVersionUnsuscrib(req, username, password, application, api, context, apiVersion);
        outboundEp->respond(res) but { error e => log:printError("Error while responding", err = e) };
    }

    @swagger:ResourceInfo {
        summary: "StoreUserApplicationPublishGetAllPublishedApi",
        tags: ["store"],
        parameters: [
            {
                name: "username",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "password",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            },
            {
                name: "application",
                inInfo: "path",
                description: "", 
                required: true, 
                allowEmptyValue: ""
            }
        ]
    }
    @http:ResourceConfig { 
        methods:["GET"],
        path:"/store/user/{username}/{password}/{application}/publish/getAllPublishedApi"
    }
    StoreUserApplicationPublishGetAllPublishedApi (endpoint outboundEp, http:Request req, string username, string password, string application) {
        http:Response res = StoreUserApplicationPublishGetAllPublishedApi(req, username, password, application);
        outboundEp->respond(res) but { error e => log:printError("Error while responding", err = e) };
    }

}
//
//  SwiftHTTPStatusCode.swift
//  SwiftHTTPStatusCode
//
//  Created by Nikita Milko on 01.02.2023.
//

import Foundation

/// HTTP status codes
public enum SwiftHTTPStatusCode: Int {
    
    case `continue`                         = 100
    case switchingProtocols                 = 101
    case processing                         = 102 // http://www.iana.org/go/rfc2518
    case earlyHints                         = 103 // http://www.iana.org/go/rfc8297
    
    case ok                                 = 200
    case created                            = 201
    case accepted                           = 202
    case nonAuthoritativeInformation        = 203
    case noContent                          = 204
    case resetContent                       = 205
    case partialContent                     = 206
    case multiStatus                        = 207 // http://www.iana.org/go/rfc4918
    case alreadyReported                    = 208 // http://www.iana.org/go/rfc5842
    case IMUsed                             = 226 // http://www.iana.org/go/rfc3229
    
    case multipleChoices                    = 300
    case movedPermanently                   = 301
    case found                              = 302
    case seeOther                           = 303
    case notModified                        = 304
    case useProxy                           = 305
    case temporaryRedirect                  = 307
    case permanentlyRedirect                = 308 // http://www.iana.org/go/rfc7238
    
    case badRequest                         = 400
    case unauthorized                       = 401
    case paymentRequired                    = 402
    case forbidden                          = 403
    case notFound                           = 404
    case methodNotAllowed                   = 405
    case notAcceptable                      = 406
    case proxyAuthenticationRequired        = 407
    case requestTimeout                     = 408
    case conflict                           = 409
    case gone                               = 410
    case lengthRequired                     = 411
    case preconditionFailed                 = 412
    case payloadTooLarge                    = 413
    case requestURITooLong                  = 414
    case unsupportedMediaType               = 415
    case requestRangeNotSatisfiable         = 416
    case expectationFailed                  = 417
    case iAmTeapot                          = 418 // http://www.iana.org/go/rfc2324
    case misdirectedRequest                 = 421 // http://www.iana.org/go/rfc7540
    case unprocessableEntity                = 422 // http://www.iana.org/go/rfc4918
    case locked                             = 423 // http://www.iana.org/go/rfc4918
    case failedDependency                   = 424 // http://www.iana.org/go/rfc4918
    case tooEarly                           = 425 // http://www.iana.org/go/rfc8740
    case upgradeRequired                    = 426 // http://www.iana.org/go/rfc2817
    case preconditionRequired               = 428 // http://www.iana.org/go/rfc6585
    case tooManyRequests                    = 429 // http://www.iana.org/go/rfc6585
    case requestHeaderFieldsTooLarge        = 431 // http://www.iana.org/go/rfc6585
    case unavailableForLegalReasons         = 451 // http://www.iana.org/go/rfc7725
    
    case internalServerError                = 500
    case notImplemented                     = 501
    case badGateway                         = 502
    case serviceUnavailable                 = 503
    case gatewayTimeout                     = 504
    case versionNotSupported                = 505
    case variantAlsoNegotiatesExperimental  = 506 // http://www.iana.org/go/rfc2295
    case insufficientStorage                = 507 // http://www.iana.org/go/rfc4918
    case loopDetected                       = 508 // http://www.iana.org/go/rfc5842
    case notExtended                        = 510 // http://www.iana.org/go/rfc2774
    case networkAuthenticationRequired      = 511 // http://www.iana.org/go/rfc6585
    
}

public extension SwiftHTTPStatusCode {
    
    /// Specifies the type of code
    var type: String {
        switch self.rawValue {
        case 100...199:
            return "Informational"
        case 200...299:
            return "Success"
        case 300...399:
            return "Redirection"
        case 400...499:
            return "Client Error"
        case 500...599:
            return "Server Error"
        default:
            return "Undefined type"
        }
    }
}

public extension SwiftHTTPStatusCode {
    
    /// String representation
    var description: String {
        switch self {
        case .continue:
            return "Continue"
        case .switchingProtocols:
            return "Switching Protocols"
        case .processing:
            return "Processing"
        case .earlyHints:
            return "Early Hints"
        case .ok:
            return "OK"
        case .created:
            return "Created"
        case .accepted:
            return "Accepted"
        case .nonAuthoritativeInformation:
            return "Non-Authoritative Information"
        case .noContent:
            return "No Content"
        case .resetContent:
            return "Reset Content"
        case .partialContent:
            return "Partial Content"
        case .multiStatus:
            return "Multi-Status"
        case .alreadyReported:
            return "Already Reported"
        case .IMUsed:
            return "IM Used"
        case .multipleChoices:
            return "Multiple Choices"
        case .movedPermanently:
            return "Moved Permanently"
        case .found:
            return "Found"
        case .seeOther:
            return "See Other"
        case .notModified:
            return "Not Modified"
        case .useProxy:
            return "Use Proxy"
        case .temporaryRedirect:
            return "Temporary Redirect"
        case .permanentlyRedirect:
            return "Permanent Redirect"
        case .badRequest:
            return "Bad Request"
        case .unauthorized:
            return "Unauthorized"
        case .paymentRequired:
            return "Payment Required"
        case .forbidden:
            return "Forbidden"
        case .notFound:
            return "Not Found"
        case .methodNotAllowed:
            return "Method Not Allowed"
        case .notAcceptable:
            return "Not Acceptable"
        case .proxyAuthenticationRequired:
            return "Proxy Authentication Required"
        case .requestTimeout:
            return "Request Timeout"
        case .conflict:
            return "Conflict"
        case .gone:
            return "Gone"
        case .lengthRequired:
            return "Length Required"
        case .preconditionFailed:
            return "Precondition Failed"
        case .payloadTooLarge:
            return "Payload Too Large"
        case .requestURITooLong:
            return "URI Too Long"
        case .unsupportedMediaType:
            return "Unsupported Media Type"
        case .requestRangeNotSatisfiable:
            return "Range Not Satisfiable"
        case .expectationFailed:
            return "Expectation Failed"
        case .iAmTeapot:
            return "I\'m a teapot"
        case .misdirectedRequest:
            return "Misdirected Request"
        case .unprocessableEntity:
            return "Unprocessable Entity"
        case .locked:
            return "Locked"
        case .failedDependency:
            return "Failed Dependency"
        case .tooEarly:
            return "Too Early"
        case .upgradeRequired:
            return "Upgrade Required"
        case .preconditionRequired:
            return "Precondition Required"
        case .tooManyRequests:
            return "Too Many Requests"
        case .requestHeaderFieldsTooLarge:
            return "Request Header Fields Too Large"
        case .unavailableForLegalReasons:
            return "Unavailable For Legal Reasons"
        case .internalServerError:
            return "Internal Server Error"
        case .notImplemented:
            return "Not Implemented"
        case .badGateway:
            return "Bad Gateway"
        case .serviceUnavailable:
            return "Service Unavailable"
        case .gatewayTimeout:
            return "Gateway Timeout"
        case .versionNotSupported:
            return "HTTP Version Not Supported"
        case .variantAlsoNegotiatesExperimental:
            return "Variant Also Negotiates (Experimental)"
        case .insufficientStorage:
            return "Insufficient Storage"
        case .loopDetected:
            return "Loop Detected"
        case .notExtended:
            return "Not Extended"
        case .networkAuthenticationRequired:
            return "Network Authentication Required"
        }
    }
    
}

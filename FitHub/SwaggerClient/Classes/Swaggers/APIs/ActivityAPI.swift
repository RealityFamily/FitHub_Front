//
// ActivityAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ActivityAPI {
    /**
     - parameter exerciseId: (path)       - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiActivityAddapproachesExerciseIdPost(exerciseId: UUID, body: [ApproachesAddRequest]? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        apiActivityAddapproachesExerciseIdPostWithRequestBuilder(exerciseId: exerciseId, body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - POST /api/activity/addapproaches/{exerciseId}
     - parameter exerciseId: (path)       - parameter body: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func apiActivityAddapproachesExerciseIdPostWithRequestBuilder(exerciseId: UUID, body: [ApproachesAddRequest]? = nil) -> RequestBuilder<Void> {
        var path = "/api/activity/addapproaches/{exerciseId}"
        let exerciseIdPreEscape = "\(exerciseId)"
        let exerciseIdPostEscape = exerciseIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{exerciseId}", with: exerciseIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     - parameter trainId: (path)       - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiActivityAddexerciseTrainIdPost(trainId: UUID, body: [ExerciseAddRequest]? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        apiActivityAddexerciseTrainIdPostWithRequestBuilder(trainId: trainId, body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - POST /api/activity/addexercise/{trainId}
     - parameter trainId: (path)       - parameter body: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func apiActivityAddexerciseTrainIdPostWithRequestBuilder(trainId: UUID, body: [ExerciseAddRequest]? = nil) -> RequestBuilder<Void> {
        var path = "/api/activity/addexercise/{trainId}"
        let trainIdPreEscape = "\(trainId)"
        let trainIdPostEscape = trainIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{trainId}", with: trainIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     - parameter activityId: (path)       - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiActivityAddtrainActivityIdPost(activityId: UUID, body: [TrainAddRequest]? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        apiActivityAddtrainActivityIdPostWithRequestBuilder(activityId: activityId, body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - POST /api/activity/addtrain/{activityId}
     - parameter activityId: (path)       - parameter body: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func apiActivityAddtrainActivityIdPostWithRequestBuilder(activityId: UUID, body: [TrainAddRequest]? = nil) -> RequestBuilder<Void> {
        var path = "/api/activity/addtrain/{activityId}"
        let activityIdPreEscape = "\(activityId)"
        let activityIdPostEscape = activityIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{activityId}", with: activityIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     - parameter body: (body)  (optional)     - parameter userId: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiActivityCreateUserIdPost(body: ActivityCreateRequest? = nil, userId: UUID? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        apiActivityCreateUserIdPostWithRequestBuilder(body: body, userId: userId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - POST /api/activity/create/userId
     - parameter body: (body)  (optional)     - parameter userId: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func apiActivityCreateUserIdPostWithRequestBuilder(body: ActivityCreateRequest? = nil, userId: UUID? = nil) -> RequestBuilder<Void> {
        let path = "/api/activity/create/userId"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "userId": userId
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}

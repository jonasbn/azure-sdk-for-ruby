# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_face'

module Azure::Profiles::Latest
  module Face
    Face = Azure::CognitiveServices::Face::V1_0::Face
    PersonGroupPerson = Azure::CognitiveServices::Face::V1_0::PersonGroupPerson
    PersonGroupOperations = Azure::CognitiveServices::Face::V1_0::PersonGroupOperations
    FaceListOperations = Azure::CognitiveServices::Face::V1_0::FaceListOperations
    LargePersonGroupPerson = Azure::CognitiveServices::Face::V1_0::LargePersonGroupPerson
    LargePersonGroupOperations = Azure::CognitiveServices::Face::V1_0::LargePersonGroupOperations
    LargeFaceListOperations = Azure::CognitiveServices::Face::V1_0::LargeFaceListOperations

    module Models
      APIError = Azure::CognitiveServices::Face::V1_0::Models::APIError
      SimilarFace = Azure::CognitiveServices::Face::V1_0::Models::SimilarFace
      GroupRequest = Azure::CognitiveServices::Face::V1_0::Models::GroupRequest
      GroupResult = Azure::CognitiveServices::Face::V1_0::Models::GroupResult
      FaceLandmarks = Azure::CognitiveServices::Face::V1_0::Models::FaceLandmarks
      IdentifyRequest = Azure::CognitiveServices::Face::V1_0::Models::IdentifyRequest
      HeadPose = Azure::CognitiveServices::Face::V1_0::Models::HeadPose
      IdentifyCandidate = Azure::CognitiveServices::Face::V1_0::Models::IdentifyCandidate
      HairColor = Azure::CognitiveServices::Face::V1_0::Models::HairColor
      IdentifyResult = Azure::CognitiveServices::Face::V1_0::Models::IdentifyResult
      Makeup = Azure::CognitiveServices::Face::V1_0::Models::Makeup
      VerifyFaceToPersonRequest = Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToPersonRequest
      Accessory = Azure::CognitiveServices::Face::V1_0::Models::Accessory
      FaceRectangle = Azure::CognitiveServices::Face::V1_0::Models::FaceRectangle
      Exposure = Azure::CognitiveServices::Face::V1_0::Models::Exposure
      VerifyResult = Azure::CognitiveServices::Face::V1_0::Models::VerifyResult
      FaceAttributes = Azure::CognitiveServices::Face::V1_0::Models::FaceAttributes
      PersistedFace = Azure::CognitiveServices::Face::V1_0::Models::PersistedFace
      FindSimilarRequest = Azure::CognitiveServices::Face::V1_0::Models::FindSimilarRequest
      Noise = Azure::CognitiveServices::Face::V1_0::Models::Noise
      DetectedFace = Azure::CognitiveServices::Face::V1_0::Models::DetectedFace
      FacialHair = Azure::CognitiveServices::Face::V1_0::Models::FacialHair
      Hair = Azure::CognitiveServices::Face::V1_0::Models::Hair
      VerifyFaceToFaceRequest = Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToFaceRequest
      Blur = Azure::CognitiveServices::Face::V1_0::Models::Blur
      ImageUrl = Azure::CognitiveServices::Face::V1_0::Models::ImageUrl
      NameAndUserDataContract = Azure::CognitiveServices::Face::V1_0::Models::NameAndUserDataContract
      Emotion = Azure::CognitiveServices::Face::V1_0::Models::Emotion
      TrainingStatus = Azure::CognitiveServices::Face::V1_0::Models::TrainingStatus
      Coordinate = Azure::CognitiveServices::Face::V1_0::Models::Coordinate
      UpdateFaceRequest = Azure::CognitiveServices::Face::V1_0::Models::UpdateFaceRequest
      Occlusion = Azure::CognitiveServices::Face::V1_0::Models::Occlusion
      PersonGroup = Azure::CognitiveServices::Face::V1_0::Models::PersonGroup
      FaceList = Azure::CognitiveServices::Face::V1_0::Models::FaceList
      LargeFaceList = Azure::CognitiveServices::Face::V1_0::Models::LargeFaceList
      Person = Azure::CognitiveServices::Face::V1_0::Models::Person
      GlassesType = Azure::CognitiveServices::Face::V1_0::Models::GlassesType
      LargePersonGroup = Azure::CognitiveServices::Face::V1_0::Models::LargePersonGroup
      AccessoryType = Azure::CognitiveServices::Face::V1_0::Models::AccessoryType
      HairColorType = Azure::CognitiveServices::Face::V1_0::Models::HairColorType
      ExposureLevel = Azure::CognitiveServices::Face::V1_0::Models::ExposureLevel
      BlurLevel = Azure::CognitiveServices::Face::V1_0::Models::BlurLevel
      Gender = Azure::CognitiveServices::Face::V1_0::Models::Gender
      NoiseLevel = Azure::CognitiveServices::Face::V1_0::Models::NoiseLevel
      FindSimilarMatchMode = Azure::CognitiveServices::Face::V1_0::Models::FindSimilarMatchMode
      TrainingStatusType = Azure::CognitiveServices::Face::V1_0::Models::TrainingStatusType
      Error = Azure::CognitiveServices::Face::V1_0::Models::Error
      FaceAttributeType = Azure::CognitiveServices::Face::V1_0::Models::FaceAttributeType
    end

    class FaceDataClass
      attr_reader :face, :person_group_person, :person_group_operations, :face_list_operations, :large_person_group_person, :large_person_group_operations, :large_face_list_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::Face::V1_0::FaceClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @face = @client_0.face
        @person_group_person = @client_0.person_group_person
        @person_group_operations = @client_0.person_group_operations
        @face_list_operations = @client_0.face_list_operations
        @large_person_group_person = @client_0.large_person_group_person
        @large_person_group_operations = @client_0.large_person_group_operations
        @large_face_list_operations = @client_0.large_face_list_operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Face"
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

      class ModelClasses
        def apierror
          Azure::CognitiveServices::Face::V1_0::Models::APIError
        end
        def similar_face
          Azure::CognitiveServices::Face::V1_0::Models::SimilarFace
        end
        def group_request
          Azure::CognitiveServices::Face::V1_0::Models::GroupRequest
        end
        def group_result
          Azure::CognitiveServices::Face::V1_0::Models::GroupResult
        end
        def face_landmarks
          Azure::CognitiveServices::Face::V1_0::Models::FaceLandmarks
        end
        def identify_request
          Azure::CognitiveServices::Face::V1_0::Models::IdentifyRequest
        end
        def head_pose
          Azure::CognitiveServices::Face::V1_0::Models::HeadPose
        end
        def identify_candidate
          Azure::CognitiveServices::Face::V1_0::Models::IdentifyCandidate
        end
        def hair_color
          Azure::CognitiveServices::Face::V1_0::Models::HairColor
        end
        def identify_result
          Azure::CognitiveServices::Face::V1_0::Models::IdentifyResult
        end
        def makeup
          Azure::CognitiveServices::Face::V1_0::Models::Makeup
        end
        def verify_face_to_person_request
          Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToPersonRequest
        end
        def accessory
          Azure::CognitiveServices::Face::V1_0::Models::Accessory
        end
        def face_rectangle
          Azure::CognitiveServices::Face::V1_0::Models::FaceRectangle
        end
        def exposure
          Azure::CognitiveServices::Face::V1_0::Models::Exposure
        end
        def verify_result
          Azure::CognitiveServices::Face::V1_0::Models::VerifyResult
        end
        def face_attributes
          Azure::CognitiveServices::Face::V1_0::Models::FaceAttributes
        end
        def persisted_face
          Azure::CognitiveServices::Face::V1_0::Models::PersistedFace
        end
        def find_similar_request
          Azure::CognitiveServices::Face::V1_0::Models::FindSimilarRequest
        end
        def noise
          Azure::CognitiveServices::Face::V1_0::Models::Noise
        end
        def detected_face
          Azure::CognitiveServices::Face::V1_0::Models::DetectedFace
        end
        def facial_hair
          Azure::CognitiveServices::Face::V1_0::Models::FacialHair
        end
        def hair
          Azure::CognitiveServices::Face::V1_0::Models::Hair
        end
        def verify_face_to_face_request
          Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToFaceRequest
        end
        def blur
          Azure::CognitiveServices::Face::V1_0::Models::Blur
        end
        def image_url
          Azure::CognitiveServices::Face::V1_0::Models::ImageUrl
        end
        def name_and_user_data_contract
          Azure::CognitiveServices::Face::V1_0::Models::NameAndUserDataContract
        end
        def emotion
          Azure::CognitiveServices::Face::V1_0::Models::Emotion
        end
        def training_status
          Azure::CognitiveServices::Face::V1_0::Models::TrainingStatus
        end
        def coordinate
          Azure::CognitiveServices::Face::V1_0::Models::Coordinate
        end
        def update_face_request
          Azure::CognitiveServices::Face::V1_0::Models::UpdateFaceRequest
        end
        def occlusion
          Azure::CognitiveServices::Face::V1_0::Models::Occlusion
        end
        def person_group
          Azure::CognitiveServices::Face::V1_0::Models::PersonGroup
        end
        def face_list
          Azure::CognitiveServices::Face::V1_0::Models::FaceList
        end
        def large_face_list
          Azure::CognitiveServices::Face::V1_0::Models::LargeFaceList
        end
        def person
          Azure::CognitiveServices::Face::V1_0::Models::Person
        end
        def glasses_type
          Azure::CognitiveServices::Face::V1_0::Models::GlassesType
        end
        def large_person_group
          Azure::CognitiveServices::Face::V1_0::Models::LargePersonGroup
        end
        def accessory_type
          Azure::CognitiveServices::Face::V1_0::Models::AccessoryType
        end
        def hair_color_type
          Azure::CognitiveServices::Face::V1_0::Models::HairColorType
        end
        def exposure_level
          Azure::CognitiveServices::Face::V1_0::Models::ExposureLevel
        end
        def blur_level
          Azure::CognitiveServices::Face::V1_0::Models::BlurLevel
        end
        def gender
          Azure::CognitiveServices::Face::V1_0::Models::Gender
        end
        def noise_level
          Azure::CognitiveServices::Face::V1_0::Models::NoiseLevel
        end
        def find_similar_match_mode
          Azure::CognitiveServices::Face::V1_0::Models::FindSimilarMatchMode
        end
        def training_status_type
          Azure::CognitiveServices::Face::V1_0::Models::TrainingStatusType
        end
        def error
          Azure::CognitiveServices::Face::V1_0::Models::Error
        end
        def face_attribute_type
          Azure::CognitiveServices::Face::V1_0::Models::FaceAttributeType
        end
      end
    end
  end
end

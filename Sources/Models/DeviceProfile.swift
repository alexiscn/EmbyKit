//
//  DeviceProfile.swift
//  
//
//  Created by alexis on 2022/3/28.
//

import Foundation

public struct DeviceProfile: Codable, Hashable {
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case id = "Id"
        case identification = "Identification"
        case friendlyName = "FriendlyName"
        case manufacturer = "Manufacturer"
        case manufacturerUrl = "ManufacturerUrl"
        case modelName = "ModelName"
        case modelDescription = "ModelDescription"
        case modelNumber = "ModelNumber"
        case modelUrl = "ModelUrl"
        case serialNumber = "SerialNumber"
        case enableAlbumArtInDidl = "EnableAlbumArtInDidl"
        case enableSingleAlbumArtLimit = "EnableSingleAlbumArtLimit"
        case enableSingleSubtitleLimit = "EnableSingleSubtitleLimit"
        case supportedMediaTypes = "SupportedMediaTypes"
        case userId = "UserId"
        case albumArtPn = "AlbumArtPn"
        case maxAlbumArtWidth = "MaxAlbumArtWidth"
        case maxAlbumArtHeight = "MaxAlbumArtHeight"
        case maxIconWidth = "MaxIconWidth"
        case maxIconHeight = "MaxIconHeight"
        case maxStreamingBitrate = "MaxStreamingBitrate"
        case maxStaticBitrate = "MaxStaticBitrate"
        case musicStreamingTranscodingBitrate = "MusicStreamingTranscodingBitrate"
        case maxStaticMusicBitrate = "MaxStaticMusicBitrate"
        case sonyAggregationFlags = "SonyAggregationFlags"
        case protocolInfo = "ProtocolInfo"
        case timelineOffsetSeconds = "TimelineOffsetSeconds"
        case requiresPlainVideoItems = "RequiresPlainVideoItems"
        case requiresPlainFolders = "RequiresPlainFolders"
        case enableMSMediaReceiverRegistrar = "EnableMSMediaReceiverRegistrar"
        case ignoreTranscodeByteRangeRequests = "IgnoreTranscodeByteRangeRequests"
        case xmlRootAttributes = "XmlRootAttributes"
        case directPlayProfiles = "DirectPlayProfiles"
        case transcodingProfiles = "TranscodingProfiles"
        case containerProfiles = "ContainerProfiles"
        case codecProfiles = "CodecProfiles"
        case responseProfiles = "ResponseProfiles"
        case subtitleProfiles = "SubtitleProfiles"
    }
    public var name: String?
    public var id: String?
    public var identification: DeviceIdentification?
    public var friendlyName: String?
    public var manufacturer: String?
    public var manufacturerUrl: String?
    public var modelName: String?
    public var modelDescription: String?
    public var modelNumber: String?
    public var modelUrl: String?
    public var serialNumber: String?
    public var enableAlbumArtInDidl: Bool?
    public var enableSingleAlbumArtLimit: Bool?
    public var enableSingleSubtitleLimit: Bool?
    public var supportedMediaTypes: String?
    public var userId: String?
    public var albumArtPn: String?
    public var maxAlbumArtWidth: Int?
    public var maxAlbumArtHeight: Int?
    public var maxIconWidth: Int?
    public var maxIconHeight: Int?
    public var maxStreamingBitrate: Int?
    public var maxStaticBitrate: Int?
    public var musicStreamingTranscodingBitrate: Int?
    public var maxStaticMusicBitrate: Int?
    public var sonyAggregationFlags: String?
    public var protocolInfo: String?
    public var timelineOffsetSeconds: Int?
    public var requiresPlainVideoItems: Bool?
    public var requiresPlainFolders: Bool?
    public var enableMSMediaReceiverRegistrar: Bool?
    public var ignoreTranscodeByteRangeRequests: Bool?
    public var xmlRootAttributes: [EmbyXmlAttribute]?
    public var directPlayProfiles: [DirectPlayProfile]?
    public var transcodingProfiles: [TranscodingProfile]?
    public var containerProfiles: [ContainerProfile]?
    public var codecProfiles: [CodecProfile]?
    public var responseProfiles: [ResponseProfile]?
    public var subtitleProfiles: [SubtitleProfile]?
    
    public init() {
        
    }
}

public struct ContainerProfile: Codable, Hashable {

    public var type: DlnaProfileType?
    public var conditions: [ProfileCondition]?
    public var container: String?

    public init(type: DlnaProfileType? = nil,
                conditions: [ProfileCondition]? = nil,
                container: String? = nil) {
        self.type = type
        self.conditions = conditions
        self.container = container
    }

    enum CodingKeys: String, CodingKey {
        case type = "Type"
        case conditions = "Conditions"
        case container = "Container"
    }
}

public struct EmbyXmlAttribute: Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case value = "Value"
    }
    public var name: String?
    public var value: String?
    public init(name: String? = nil, value: String? = nil) {
        self.name = name
        self.value = value
    }
}

public enum HeaderMatchType: String, Codable {
    case equals = "Equals"
    case regex = "Regex"
    case substring = "Substring"
}

public struct HttpHeaderInfo: Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case value = "Value"
        case match = "Match"
    }
    public var name: String?
    public var value: String?
    public var match: HeaderMatchType?
    public init(name: String? = nil,
                value: String? = nil,
                match: HeaderMatchType? = nil) {
        self.name = name
        self.value = value
        self.match = match
    }
}

public struct DeviceIdentification: Codable, Hashable {
    enum CodingKeys: String, CodingKey, CaseIterable {
        case friendlyName = "FriendlyName"
        case modelNumber = "ModelNumber"
        case serialNumber = "SerialNumber"
        case modelName = "ModelName"
        case modelDescription = "ModelDescription"
        case modelUrl = "ModelUrl"
        case manufacturer = "Manufacturer"
        case manufacturerUrl = "ManufacturerUrl"
        case headers = "Headers"
    }
    public var friendlyName: String?
    public var modelNumber: String?
    public var serialNumber: String?
    public var modelName: String?
    public var modelDescription: String?
    public var modelUrl: String?
    public var manufacturer: String?
    public var manufacturerUrl: String?
    public var headers: [HttpHeaderInfo]?
    
    public init() {
        
    }
}

public struct DirectPlayProfile: Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case container = "Container"
        case audioCodec = "AudioCodec"
        case videoCodec = "VideoCodec"
        case type = "Type"
    }
    public var container: String? = nil
    public var audioCodec: String? = nil
    public var videoCodec: String? = nil
    public var type: DlnaProfileType? = nil
}

public enum DlnaProfileType: String, Codable {
    case audio = "Audio"
    case video = "Video"
    case photo = "Photo"
}

public struct TranscodingProfile: Codable, Hashable {

    enum CodingKeys: String, CodingKey, CaseIterable {
        case container = "Container"
        case type = "Type"
        case videoCodec = "VideoCodec"
        case audioCodec = "AudioCodec"
        case _protocol = "Protocol"
        case estimateContentLength = "EstimateContentLength"
        case enableMpegtsM2TsMode = "EnableMpegtsM2TsMode"
        case transcodeSeekInfo = "TranscodeSeekInfo"
        case copyTimestamps = "CopyTimestamps"
        case context = "Context"
        case enableSubtitlesInManifest = "EnableSubtitlesInManifest"
        case maxAudioChannels = "MaxAudioChannels"
        case minSegments = "MinSegments"
        case segmentLength = "SegmentLength"
        case breakOnNonKeyFrames = "BreakOnNonKeyFrames"
    }
    
    public var container: String?
    public var type: DlnaProfileType?
    public var videoCodec: String?
    public var audioCodec: String?
    public var _protocol: String?
    public var estimateContentLength: Bool?
    public var enableMpegtsM2TsMode: Bool?
    public var transcodeSeekInfo: TranscodeSeekInfo?
    public var copyTimestamps: Bool?
    public var context: EncodingContext?
    public var enableSubtitlesInManifest: Bool?
    public var maxAudioChannels: String?
    public var minSegments: Int?
    public var segmentLength: Int?
    public var breakOnNonKeyFrames: Bool?
}

public enum TranscodeSeekInfo: String, Codable {
    case auto = "Auto"
    case bytes = "Bytes"
}

public enum EncodingContext: String, Codable, CaseIterable {
    case streaming = "Streaming"
    case _static = "Static"
}

public enum CodecType: String, Codable, CaseIterable {
    case video = "Video"
    case videoAudio = "VideoAudio"
    case audio = "Audio"
}

public struct CodecProfile: Codable, Hashable {

    enum CodingKeys: String, CodingKey {
        case type = "Type"
        case conditions = "Conditions"
        case applyConditions = "ApplyConditions"
        case codec = "Codec"
        case container = "Container"
    }
    
    public var type: CodecType?
    public var conditions: [ProfileCondition]?
    public var applyConditions: [ProfileCondition]?
    public var codec: String?
    public var container: String?
    
    public init(type: CodecType? = nil,
                conditions: [ProfileCondition]? = nil,
                applyConditions: [ProfileCondition]? = nil,
                codec: String? = nil,
                container: String? = nil) {
        self.type = type
        self.conditions = conditions
        self.applyConditions = applyConditions
        self.codec = codec
        self.container = container
    }
}

public enum ProfileConditionType: String, Codable {
    case equals = "Equals"
    case notEquals = "NotEquals"
    case lessThanEqual = "LessThanEqual"
    case greaterThanEqual = "GreaterThanEqual"
    case equalsAny = "EqualsAny"
}

public enum ProfileConditionValue: String, Codable {
    case audioChannels = "AudioChannels"
    case audioBitrate = "AudioBitrate"
    case audioProfile = "AudioProfile"
    case width = "Width"
    case height = "Height"
    case has64BitOffsets = "Has64BitOffsets"
    case packetLength = "PacketLength"
    case videoBitDepth = "VideoBitDepth"
    case videoBitrate = "VideoBitrate"
    case videoFramerate = "VideoFramerate"
    case videoLevel = "VideoLevel"
    case videoProfile = "VideoProfile"
    case videoTimestamp = "VideoTimestamp"
    case isAnamorphic = "IsAnamorphic"
    case refFrames = "RefFrames"
    case numAudioStreams = "NumAudioStreams"
    case numVideoStreams = "NumVideoStreams"
    case isSecondaryAudio = "IsSecondaryAudio"
    case videoCodecTag = "VideoCodecTag"
    case isAvc = "IsAvc"
    case isInterlaced = "IsInterlaced"
    case audioSampleRate = "AudioSampleRate"
    case audioBitDepth = "AudioBitDepth"
}

public struct ProfileCondition: Codable, Hashable {
    enum CodingKeys: String, CodingKey, CaseIterable {
        case condition = "Condition"
        case property = "Property"
        case value = "Value"
        case isRequired = "IsRequired"
    }
    public var condition: ProfileConditionType?
    public var property: ProfileConditionValue?
    public var value: String?
    public var isRequired: Bool?

    public init(condition: ProfileConditionType? = nil,
                property: ProfileConditionValue? = nil,
                value: String? = nil,
                isRequired: Bool? = nil) {
        self.condition = condition
        self.property = property
        self.value = value
        self.isRequired = isRequired
    }
}

public enum SubtitleDeliveryMethod: String, Codable {
   case encode = "Encode"
   case embed = "Embed"
   case external = "External"
   case hls = "Hls"
}

public struct SubtitleProfile: Codable, Hashable {
    enum CodingKeys: String, CodingKey, CaseIterable {
        case format = "Format"
        case method = "Method"
        case didlMode = "DidlMode"
        case language = "Language"
        case container = "Container"
    }
    public var format: String?
    public var method: SubtitleDeliveryMethod?
    public var didlMode: String?
    public var language: String?
    public var container: String?

    public init(format: String? = nil,
                method: SubtitleDeliveryMethod? = nil,
                didlMode: String? = nil,
                language: String? = nil,
                container: String? = nil) {
        self.format = format
        self.method = method
        self.didlMode = didlMode
        self.language = language
        self.container = container
    }
}

public struct ResponseProfile: Codable, Hashable {
    enum CodingKeys: String, CodingKey, CaseIterable {
        case container = "Container"
        case audioCodec = "AudioCodec"
        case videoCodec = "VideoCodec"
        case type = "Type"
        case orgPn = "OrgPn"
        case mimeType = "MimeType"
        case conditions = "Conditions"
    }
    public var container: String?
    public var audioCodec: String?
    public var videoCodec: String?
    public var type: DlnaProfileType?
    public var orgPn: String?
    public var mimeType: String?
    public var conditions: [ProfileCondition]?

    public init(container: String? = nil,
                 audioCodec: String? = nil,
                 videoCodec: String? = nil,
                 type: DlnaProfileType? = nil,
                 orgPn: String? = nil,
                 mimeType: String? = nil,
                 conditions: [ProfileCondition]? = nil) {
        self.container = container
        self.audioCodec = audioCodec
        self.videoCodec = videoCodec
        self.type = type
        self.orgPn = orgPn
        self.mimeType = mimeType
        self.conditions = conditions
    }
}

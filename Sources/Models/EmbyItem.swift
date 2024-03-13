//
//  EmbyItem.swift
//  
//
//  Created by alexiscn on 2022/3/18.
//

import Foundation

public class EmbyItem: Codable, Hashable, Identifiable, @unchecked Sendable {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case originalTitle = "OriginalTitle"
        case serverId = "ServerId"
        case id = "Id"
        case etag = "Etag"
        case playlistItemId = "PlaylistItemId"
        case dateCreated = "DateCreated"
        case extraType = "ExtraType"
        case airsBeforeSeasonNumber = "AirsBeforeSeasonNumber"
        case airsAfterSeasonNumber = "AirsAfterSeasonNumber"
        case airsBeforeEpisodeNumber = "AirsBeforeEpisodeNumber"
        case displaySpecialsWithSeasons = "DisplaySpecialsWithSeasons"
        case canDelete = "CanDelete"
        case canDownload = "CanDownload"
        case hasSubtitles = "HasSubtitles"
        case supportsResume = "SupportsResume"
        case preferredMetadataLanguage = "PreferredMetadataLanguage"
        case preferredMetadataCountryCode = "PreferredMetadataCountryCode"
        case supportsSync = "SupportsSync"
        case container = "Container"
        case sortName = "SortName"
        case forcedSortName = "ForcedSortName"
        case video3DFormat = "Video3DFormat"
        case premiereDate = "PremiereDate"
        case externalUrls = "ExternalUrls"
        case mediaSources = "MediaSources"
        case criticRating = "CriticRating"
        case gameSystemId = "GameSystemId"
        case gameSystem = "GameSystem"
        case productionLocations = "ProductionLocations"
        case path = "Path"
        case officialRating = "OfficialRating"
        case customRating = "CustomRating"
        case channelId = "ChannelId"
        case channelName = "ChannelName"
        case overview = "Overview"
        case taglines = "Taglines"
        case genres = "Genres"
        case communityRating = "CommunityRating"
        case runTimeTicks = "RunTimeTicks"
        case playAccess = "PlayAccess"
        case aspectRatio = "AspectRatio"
        case productionYear = "ProductionYear"
        case number = "Number"
        case channelNumber = "ChannelNumber"
        case indexNumber = "IndexNumber"
        case indexNumberEnd = "IndexNumberEnd"
        case parentIndexNumber = "ParentIndexNumber"
        case remoteTrailers = "RemoteTrailers"
        //case //ProviderIds    {...}
        case isFolder = "IsFolder"
        case parentId = "ParentId"
        case type = "Type"
        case people = "People"
        case studios = "Studios"
        case tagItems = "TagItems"
        case genreItems = "GenreItems"
        case parentLogoItemId = "ParentLogoItemId"
        case parentBackdropItemId = "ParentBackdropItemId"
        case parentBackdropImageTags = "ParentBackdropImageTags"
        case localTrailerCount = "LocalTrailerCount"
        case userData = "UserData"
        case recursiveItemCount = "RecursiveItemCount"
        case childCount = "ChildCount"
        case seriesName = "SeriesName"
        case seriesId = "SeriesId"
        case seasonId = "SeasonId"
        case specialFeatureCount = "SpecialFeatureCount"
        case displayPreferencesId = "DisplayPreferencesId"
        case status = "Status"
        case airTime = "AirTime"
        //case airDays = "AirDays"
        case tags = "Tags"
        case primaryImageAspectRatio = "PrimaryImageAspectRatio"
        case artists = "Artists"
        case artistItems = "ArtistItems"
        case album = "Album"
        case collectionType = "CollectionType"
        case displayOrder = "DisplayOrder"
        case albumId = "AlbumId"
        case albumPrimaryImageTag = "AlbumPrimaryImageTag"
        case seriesPrimaryImageTag = "SeriesPrimaryImageTag"
        case albumArtist = "AlbumArtist"
        case albumArtists = "AlbumArtists"
        case seasonName = "SeasonName"
        case mediaStreams = "MediaStreams"
        case partCount = "PartCount"
        case imageTags = "ImageTags"
        case backdropImageTags = "BackdropImageTags"
        case parentLogoImageTag = "ParentLogoImageTag"
        case parentArtItemId = "ParentArtItemId"
        case parentArtImageTag = "ParentArtImageTag"
        case seriesThumbImageTag = "SeriesThumbImageTag"
        case seriesStudio = "SeriesStudio"
        case parentThumbItemId = "ParentThumbItemId"
        case parentThumbImageTag = "ParentThumbImageTag"
        case parentPrimaryImageItemId = "ParentPrimaryImageItemId"
        case parentPrimaryImageTag = "ParentPrimaryImageTag"
        case chapters = "Chapters"
        case locationType = "LocationType"
        case mediaType = "MediaType"
        case endDate = "EndDate"
        case lockedFields = "LockedFields"
        case lockData = "LockData"
        case width = "Width"
        case height = "Height"
        case cameraMake = "CameraMake"
        case cameraModel = "CameraModel"
        case software = "Software"
        case exposureTime = "ExposureTime"
        case focalLength = "FocalLength"
        case imageOrientation = "ImageOrientation"
        case aperture = "Aperture"
        case shutterSpeed = "ShutterSpeed"
        case latitude = "Latitude"
        case longitude = "Longitude"
        case altitude = "Altitude"
        case isoSpeedRating = "IsoSpeedRating"
        case seriesTimerId = "SeriesTimerId"
        case channelPrimaryImageTag = "ChannelPrimaryImageTag"
        case startDate = "StartDate"
        case completionPercentage = "CompletionPercentage"
        case isRepeat = "IsRepeat"
        case isNew = "IsNew"
        case episodeTitle = "EpisodeTitle"
        case isMovie = "IsMovie"
        case isSports = "IsSports"
        case isSeries = "IsSeries"
        case isLive = "IsLive"
        case isNews = "IsNews"
        case isKids = "IsKids"
        case isPremiere = "IsPremiere"
        case timerId = "TimerId"
        //CurrentProgram    {...}
        case movieCount = "MovieCount"
        case seriesCount = "SeriesCount"
        case albumCount = "AlbumCount"
        case songCount = "SongCount"
        case musicVideoCount = "MusicVideoCount"
        case subviews = "Subviews"
    }
    
    public var name: String
    public var originalTitle: String?
    public var serverId: String?
    public var id: String
    public var etag: String?
    public var playlistItemId: String?
    public var dateCreated: String?
    public var extraType: String?
    public var airsBeforeSeasonNumber: Int?
    public var airsAfterSeasonNumber: Int?
    public var airsBeforeEpisodeNumber: Int?
    public var displaySpecialsWithSeasons: Bool?
    public var canDelete: Bool?
    public var canDownload: Bool?
    public var hasSubtitles: Bool?
    public var supportsResume: Bool?
    public var preferredMetadataLanguage: String?
    public var preferredMetadataCountryCode: String?
    public var supportsSync: Bool?
    public var container: String?
    public var sortName: String?
    public var forcedSortName: String?
    public var video3DFormat: String? /// enum (HalfSideBySide, FullSideBySide, FullTopAndBottom, HalfTopAndBottom, MVC)
    public var premiereDate: String?
    public var externalUrls: [ExternalUrl]?
    public var mediaSources: [MediaSourceInfo]? // TODO
    public var criticRating: Float?
    public var gameSystemId: Int64?
    public var gameSystem: String?
    public var productionLocations: [String]?
    public var path: String?
    public var officialRating: String?
    public var customRating: String?
    public var channelId: String?
    public var channelName: String?
    public var overview: String?
    public var taglines: [String]?
    public var genres: [String]?
    public var communityRating: Float?
    public var runTimeTicks: Int64?
    public var playAccess: String? /// enum (Full, None)
    public var aspectRatio: String?
    public var productionYear: Int?
    public var number: String?
    public var channelNumber: String?
    public var indexNumber: Int?
    public var indexNumberEnd: Int?
    public var parentIndexNumber: Int?
    public var remoteTrailers: [MediaUrl]?
    public var isFolder: Bool?
    public var parentId: String?
    public var type: String?
    public var people: [EmbyPeople]?
    public var studios: [NameLongIdPair]?
    public var tagItems: [NameLongIdPair]?
    public var genreItems: [NameLongIdPair]?
    public var parentLogoItemId: String?
    public var parentBackdropItemId: String?
    public var parentBackdropImageTags: [String]?
    public var localTrailerCount: Int?
    public var userData: UserData?
    public var recursiveItemCount: Int?
    public var childCount: Int?
    public var seriesName: String?
    public var seriesId: String?
    public var seasonId: String?
    public var specialFeatureCount: Int?
    public var displayPreferencesId: String?
    public var status: String?
    public var airTime: String?
    //public var airDays: [String]? // enum(Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday)
    public var tags: [String]?
    public var primaryImageAspectRatio: Double?
    public var artists: [String]?
    public var artistItems: [NameIdPair]?
    public var album: String?
    public var collectionType: String?
    public var displayOrder: String?
    public var albumId: String?
    public var albumPrimaryImageTag: String?
    public var seriesPrimaryImageTag: String?
    public var albumArtist: String?
    public var albumArtists: [NameIdPair]?
    public var seasonName: String?
    public var mediaStreams: [MediaStream]?
    public var partCount: Int?
    public var imageTags: [String: String]?
    public var backdropImageTags: [String]?
    public var parentLogoImageTag: String?
    public var parentArtItemId: String?
    public var parentArtImageTag: String?
    public var seriesThumbImageTag: String?
    public var seriesStudio: String?
    public var parentThumbItemId: String?
    public var parentThumbImageTag: String?
    public var parentPrimaryImageItemId: String?
    public var parentPrimaryImageTag: String?
    public var chapters: [ChapterInfo]?
    public var locationType: String? // enum (FileSystem, Virtual)
    public var mediaType: String?
    public var endDate: String?
    // enum (Cast, Genres, ProductionLocations, Studios, Tags, Name, Overview, Runtime, OfficialRating)
    public var lockedFields: [String]?
    public var lockData: Bool?
    public var width: Int?
    public var height: Int?
    public var cameraMake: String?
    public var cameraModel: String?
    public var software: String?
    public var exposureTime: Double?
    public var focalLength: Double?
    // enum (TopLeft, TopRight, BottomRight, BottomLeft, LeftTop, RightTop, RightBottom, LeftBottom)
    public var imageOrientation: String?
    public var aperture: Double?
    public var shutterSpeed: Double?
    public var latitude: Double?
    public var longitude: Double?
    public var altitude: Double?
    public var isoSpeedRating: Int?
    public var seriesTimerId: String?
    public var channelPrimaryImageTag: String?
    public var startDate: String?
    public var completionPercentage: Double?
    public var isRepeat: Bool?
    public var isNew: Bool?
    public var episodeTitle: String?
    public var isMovie: Bool?
    public var isSports: Bool?
    public var isSeries: Bool?
    public var isLive: Bool?
    public var isNews: Bool?
    public var isKids: Bool?
    public var isPremiere: Bool?
    public var timerId: String?
    public var movieCount: Int?
    public var seriesCount: Int?
    public var albumCount: Int?
    public var songCount: Int?
    public var musicVideoCount: Int?
    public var subviews: [String]?
    
    public init(name: String, id: String) {
        self.name = name
        self.id = id
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    public static func == (lhs: EmbyItem, rhs: EmbyItem) -> Bool {
        return lhs.id == rhs.id
    }
}

public enum ItemType: String {
    /// This is an audio file.
    case audio = "Audio"
    /// This is a generic video file.
    case video = "Video"
    /// This is a generic folder.
    case folder = "Folder"
    /// These are specialized representations of Video.
    case episode = "Episode"
    case movie = "Movie"
    case trailer = "Trailer"
    case adultVideo = "AdultVideo"
    case musicVideo = "MusicVideo"
    /// These are specialized representations of Folder.
    case boxSet = "BoxSet"
    case musicAlbum = "MusicAlbum"
    case musicArtist = "MusicArtist"
    case season = "Season"
    case series = "Series"
    /// Game is a media item and GameSystem is folder containing games.
    case game = "Game"
    case gameSystem = "GameSystem"
    /// A media item that represents a book.
    case book = "Book"
}

public enum MediaType: String {
    case audio = "Audio"
    case video = "Video"
    case game = "Game"
    case book = "Book"
    case photo = "Photo"
}

public struct ExternalUrl: Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case url = "Url"
    }
    public let name: String?
    public let url: String?
    public init(name: String?, url: String?) {
        self.name = name
        self.url = url
    }
}

public struct MediaUrl: Codable {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case url = "Url"
    }
    public let name: String?
    public let url: String?
}

public struct NameLongIdPair: Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case id = "Id"
    }
    public let name: String
    public let id: Int64
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        
        if let id = try? container.decode(Int64.self, forKey: .id) {
            self.id = id
        } else if let id = try? container.decode(String.self, forKey: .id) {
            self.id = Int64(id) ?? 0
        } else {
            self.id = 0
        }
    }
}

public struct NameIdPair: Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case id = "Id"
    }
    public let name: String
    public let id: String
}

public struct ChapterInfo: Codable {
    enum CodingKeys: String, CodingKey {
        case startPositionTicks = "StartPositionTicks"
        case name = "Name"
        case imageTag = "ImageTag"
    }
    public let startPositionTicks: Int64?
    public let name: String?
    public let imageTag: String?
}

public struct EmbyPeople: Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case name = "Name"
        case primaryImageTag = "PrimaryImageTag"
        case role = "Role"
        case type = "Type"
    }
    public let id: String
    public let name: String
    public let primaryImageTag: String?
    public let role: String?
    public let type: String
}

public struct UserData: Codable {
    enum CodingKeys: String, CodingKey {
        case rating = "Ratring"
        case playedPercentage = "PlayedPercentage"
        case unplayedItemCount = "UnplayedItemCount"
        case playbackPositionTicks = "PlaybackPositionTicks"
        case playCount = "PlayCount"
        case isFavorite = "IsFavorite"
        case likes = "Likes"
        case lastPlayedDate = "LastPlayedDate"
        case played = "Played"
        case key = "Key"
        case itemId = "ItemId"
    }
    public let rating: Double?
    public var playedPercentage: Double?
    public let unplayedItemCount: Int?
    public var playbackPositionTicks: Int64?
    public var playCount: Int?
    public var isFavorite: Bool?
    public let likes: Bool?
    public let lastPlayedDate: String?
    public var played: Bool?
    public let key: String?
    public let itemId: String?
}

public struct MediaSourceInfo: Codable, Hashable, Sendable {
    enum CodingKeys: String, CodingKey {
        case `protocol` = "Protocol"
        case id = "Id"
        case path = "Path"
        case etag = "ETag"
        case encoderPath = "EncoderPath"
        case encoderProtocol = "EncoderProtocol"
        case type = "Type"
        case container = "Container"
        case size = "Size"
        case name = "Name"
        case isRemote = "IsRemote"
        case runTimeTicks = "RunTimeTicks"
        case supportsTranscoding = "SupportsTranscoding"
        case supportsDirectStream = "SupportsDirectStream"
        case supportsDirectPlay = "SupportsDirectPlay"
        case isInfiniteStream = "IsInfiniteStream"
        case requiresOpening = "RequiresOpening"
        case openToken = "OpenToken"
        case requiresClosing = "RequiresClosing"
        case liveStreamId = "LiveStreamId"
        case bufferMs = "BufferMs"
        case requiresLooping = "RequiresLooping"
        case supportsProbing = "SupportsProbing"
        case video3DFormat = "Video3DFormat"
        case mediaStreams = "MediaStreams"
        case formats = "Formats"
        case bitrate = "Bitrate"
        case timestamp = "Timestamp"
        case requiredHttpHeaders = "RequiredHttpHeaders"
        case transcodingUrl = "TranscodingUrl"
        case transcodingSubProtocol = "TranscodingSubProtocol"
        case transcodingContainer = "TranscodingContainer"
        case analyzeDurationMs = "AnalyzeDurationMs"
        case readAtNativeFramerate = "ReadAtNativeFramerate"
        case defaultAudioStreamIndex = "DefaultAudioStreamIndex"
        case defaultSubtitleStreamIndex = "DefaultSubtitleStreamIndex"
        case directStreamUrl = "DirectStreamUrl"
    }
    
    // enum (File, Http, Rtmp, Rtsp, Udp, Rtp, Ftp, Mms)
    public var `protocol`: String?
    public var id: String?
    public var path: String?
    public var etag: String?
    public var encoderPath: String?
    // enum (File, Http, Rtmp, Rtsp, Udp, Rtp, Ftp, Mms)
    public var encoderProtocol: String?
    // enum (Default, Grouping, Placeholder)
    public var type: String?
    public var container: String?
    public var size: Int64?
    public var name: String?
    public var isRemote: Bool?
    public var runTimeTicks: Int64?
    public var supportsTranscoding: Bool?
    public var supportsDirectStream: Bool?
    public var supportsDirectPlay: Bool?
    public var isInfiniteStream: Bool?
    public var requiresOpening: Bool?
    public var openToken: String?
    public var requiresClosing: Bool?
    public var liveStreamId: String?
    public var bufferMs: Int?
    public var requiresLooping: Bool?
    public var supportsProbing: Bool?
    // enum (HalfSideBySide, FullSideBySide, FullTopAndBottom, HalfTopAndBottom, MVC)
    public var video3DFormat: String?
    public var mediaStreams: [MediaStream]?
    public var formats: [String]?
    public var bitrate: Int?
    public var timestamp: String? // enum (None, Zero, Valid)
    public var requiredHttpHeaders: [String: String]?
    public var transcodingUrl: String?
    public var transcodingSubProtocol: String?
    public var transcodingContainer: String?
    public var analyzeDurationMs: Int?
    public var readAtNativeFramerate: Bool?
    public var defaultAudioStreamIndex: Int?
    public var defaultSubtitleStreamIndex: Int?
    public var directStreamUrl: String?
    
    public init() {
        
    }
}

public struct MediaStream: Codable, Hashable, Sendable {
    enum CodingKeys: String, CodingKey {
        case codec = "Codec"
        case codecTag = "CodecTag"
        case language = "Language"
        case colorTransfer = "ColorTransfer"
        case colorPrimaries = "ColorPrimaries"
        case colorSpace = "ColorSpace"
        case comment = "Comment"
        case timeBase = "TimeBase"
        case codecTimeBase = "CodecTimeBase"
        case title = "Title"
        case extradata = "Extradata"
        case videoRange = "VideoRange"
        case displayTitle = "DisplayTitle"
        case displayLanguage = "DisplayLanguage"
        case nalLengthSize = "NalLengthSize"
        case isInterlaced = "IsInterlaced"
        case isAVC = "IsAVC"
        case channelLayout = "ChannelLayout"
        case bitRate = "BitRate"
        case bitDepth = "BitDepth"
        case refFrames = "RefFrames"
        case packetLength = "PacketLength"
        case channels = "Channels"
        case sampleRate = "SampleRate"
        case isDefault = "IsDefault"
        case isForced = "IsForced"
        case height = "Height"
        case width = "Width"
        case averageFrameRate = "AverageFrameRate"
        case realFrameRate = "RealFrameRate"
        case profile = "Profile"
        case type = "Type"
        case aspectRatio = "AspectRatio"
        case index = "Index"
        case score = "Score"
        case isExternal = "IsExternal"
        case deliveryMethod = "DeliveryMethod"
        case deliveryUrl = "DeliveryUrl"
        case isExternalUrl = "IsExternalUrl"
        case isTextSubtitleStream = "IsTextSubtitleStream"
        case supportsExternalStream = "SupportsExternalStream"
        case path = "Path"
        case pixelFormat = "PixelFormat"
        case level = "Level"
        case isAnamorphic = "IsAnamorphic"
    }
        
    public var codec: String?
    public var codecTag: String?
    public var language: String?
    public var colorTransfer: String?
    public var colorPrimaries: String?
    public var colorSpace: String?
    public var comment: String?
    public var timeBase: String?
    public var codecTimeBase: String?
    public var title: String?
    public var extradata: String?
    public var videoRange: String?
    public var displayTitle: String?
    public var displayLanguage: String?
    public var nalLengthSize: String?
    public var isInterlaced: Bool?
    public var isAVC: Bool?
    public var channelLayout: String?
    public var bitRate: Int?
    public var bitDepth: Int?
    public var refFrames: Int?
    public var packetLength: Int?
    public var channels: Int?
    public var sampleRate: Int?
    public var isDefault: Bool?
    public var isForced: Bool?
    public var height: Int?
    public var width: Int?
    public var averageFrameRate: Float?
    public var realFrameRate: Float?
    public var profile: String?
    // enum (Audio, Video, Subtitle, EmbeddedImage)
    public var type: String?
    public var aspectRatio: String?
    public var index: Int?
    public var score: Int?
    public var isExternal: Bool?
    // enum (Encode, Embed, External, Hls)
    public var deliveryMethod: String?
    public var deliveryUrl: String?
    public var isExternalUrl: Bool?
    public var isTextSubtitleStream: Bool?
    public var supportsExternalStream: Bool?
    public var path: String?
    public var pixelFormat: String?
    public var level: Double?
    public var isAnamorphic: Bool?
    
    public init() {
        
    }
}

public struct SearchHint: Codable {
    enum CodingKeys: String, CodingKey {
        case itemId = "ItemId"
        case id = "Id"
        case name = "Name"
        case matchedTerm = "MatchedTerm"
        case indexNumber = "IndexNumber"
        case productionYear = "ProductionYear"
        case parentIndexNumber = "ParentIndexNumber"
        case primaryImageTag = "PrimaryImageTag"
        case thumbImageTag = "ThumbImageTag"
        case thumbImageItemId = "ThumbImageItemId"
        case backdropImageTag = "BackdropImageTag"
        case backdropImageItemId = "BackdropImageItemId"
        case type = "Type"
        case isFolder = "IsFolder"
        case runTimeTicks = "RunTimeTicks"
        case mediaType = "MediaType"
        case startDate = "StartDate"
        case endDate = "EndDate"
        case series = "Series"
        case status = "Status"
        case album = "Album"
        case albumId = "AlbumId"
        case albumArtist = "AlbumArtist"
        case artists = "Artists"
        case songCount = "SongCount"
        case episodeCount = "EpisodeCount"
        case channelName = "ChannelName"
        case primaryImageAspectRatio = "PrimaryImageAspectRatio"
    }
    
    public let itemId: Int64
    public let id: Int64
    public let name: String?
    public let matchedTerm: String?
    public let indexNumber: Int?
    public let productionYear: Int?
    public let parentIndexNumber: Int?
    public let primaryImageTag: String?
    public let thumbImageTag: String?
    public let thumbImageItemId: String?
    public let backdropImageTag: String?
    public let backdropImageItemId: String?
    public let type: String?
    public let isFolder: Bool?
    public let runTimeTicks: Int64?
    public let mediaType: String?
    public let startDate: String?
    public let endDate: String?
    public let series: String?
    public let status: String?
    public let album: String?
    public let albumId: Int64?
    public let albumArtist: String?
    public let artists: [String]?
    public let songCount: Int?
    public let episodeCount: Int?
    public let channelName: String?
    public let primaryImageAspectRatio: Double?
}

public struct SystemInfo: Codable {
    enum CodingKeys: String, CodingKey {
        case systemUpdateLevel = "SystemUpdateLevel"
        case operatingSystemDisplayName = "OperatingSystemDisplayName"
        case hasPendingRestart = "HasPendingRestart"
        case isShuttingDown = "IsShuttingDown"
        case operatingSystem = "OperatingSystem"
        case supportsLibraryMonitor = "SupportsLibraryMonitor"
        case supportsLocalPortConfiguration = "SupportsLocalPortConfiguration"
//        case webSocketPortNumber = "WebSocketPortNumber"
        //case completedInstallations = "CompletedInstallations"
        case canSelfRestart = "CanSelfRestart"
        case CanSelfUpdate = "CanSelfUpdate"
        case canLaunchWebBrowser = "CanLaunchWebBrowser"
        case programDataPath = "ProgramDataPath"
        case itemsByNamePath = "ItemsByNamePath"
        case cachePath = "CachePath"
        case logPath = "LogPath"
        case internalMetadataPath = "InternalMetadataPath"
        case transcodingTempPath = "TranscodingTempPath"
//        case httpServerPortNumber = "HttpServerPortNumber"
        case supportsHttps = "SupportsHttps"
//        case httpsPortNumber = "HttpsPortNumber"
        case hasUpdateAvailable = "HasUpdateAvailable"
        case supportsAutoRunAtStartup = "SupportsAutoRunAtStartup"
        case hardwareAccelerationRequiresPremiere = "HardwareAccelerationRequiresPremiere"
        case localAddress = "LocalAddress"
        case wanAddress = "WanAddress"
        case serverName = "ServerName"
        case version = "Version"
        case id = "Id"
    }
    
    public let systemUpdateLevel: String?
    public let operatingSystemDisplayName: String?
    public let hasPendingRestart: Bool?
    public let isShuttingDown: Bool?
    public let operatingSystem: String?
    public let supportsLibraryMonitor: Bool?
    public let supportsLocalPortConfiguration: Bool?
//    let webSocketPortNumber: Int?
    //let completedInstallations: [String]?
    public let canSelfRestart: Bool?
    public let CanSelfUpdate: Bool?
    public let canLaunchWebBrowser: Bool?
    public let programDataPath: String?
    public let itemsByNamePath: String?
    public let cachePath: String?
    public let logPath: String?
    public let internalMetadataPath: String?
    public let transcodingTempPath: String?
//    let httpServerPortNumber: Int?
    public let supportsHttps: Bool?
//    let httpsPortNumber: Int?
    public let hasUpdateAvailable: Bool?
    public let supportsAutoRunAtStartup: Bool?
    public let hardwareAccelerationRequiresPremiere: Bool?
    public let localAddress: String?
    public let wanAddress: String?
    public let serverName: String?
    public let version: String?
    public let id: String?
}

public struct SessionInfo: Codable {
    enum CodingKeys: String, CodingKey {
        case additionalUsers = "AdditionalUsers"
        case remoteEndPoint = "RemoteEndPoint"
        case playableMediaTypes = "PlayableMediaTypes"
        case playlistIndex = "PlaylistIndex"
        case playlistLength = "PlaylistLength"
        case id = "Id"
        case serverID = "ServerId"
        case userID = "UserId"
        case userName = "UserName"
        case client = "Client"
        case lastActivityDate = "LastActivityDate"
        case deviceName = "DeviceName"
        case deviceID = "DeviceId"
        case applicationVersion = "ApplicationVersion"
        case supportsRemoteControl = "SupportsRemoteControl"
    }
    public let additionalUsers: [EmbyUser]?
    public let remoteEndPoint: String?
    public let playableMediaTypes: [String]?
    public let playlistIndex: Int?
    public let playlistLength: Int?
    public let id: String
    public let serverID: String
    public let userID: String
    public let userName: String
    public let client: String?
    public let lastActivityDate: String?
    public let deviceName: String?
    public let deviceID: String?
    public let applicationVersion: String?
    public let supportsRemoteControl: Bool?
}

public struct EmbyUser: Codable {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case serverID = "ServerId"
        case id = "Id"
        case hasPassword = "HasPassword"
        case hasConfiguredPassword = "HasConfiguredPassword"
        case hasConfiguredEasyPassword = "HasConfiguredEasyPassword"
        case lastLoginDate = "LastLoginDate"
        case lastActivityDate = "LastActivityDate"
        case configuration = "Configuration"
        case primaryImageTag = "PrimaryImageTag"
    }
    public let name: String
    public let serverID: String
    public let id: String
    public let hasPassword: Bool?
    public let hasConfiguredPassword: Bool?
    public let hasConfiguredEasyPassword: Bool?
    public let lastLoginDate: String?
    public let lastActivityDate: String?
    public let configuration: EmbyUserConfiguration?
    public let primaryImageTag: String?
}

public struct EmbyUserConfiguration: Codable {
    enum CodingKeys: String, CodingKey {
        case audioLanguagePreference = "AudioLanguagePreference"
        case displayMissingEpisodes = "DisplayMissingEpisodes"
        case enableLocalPassword = "EnableLocalPassword"
        case enableNextEpisodeAutoPlay = "EnableNextEpisodeAutoPlay"
        case hidePlayedInLatest = "HidePlayedInLatest"
        case latestItemsExcludes = "LatestItemsExcludes"
        case myMediaExcludes = "MyMediaExcludes"
        case orderedViews = "OrderedViews"
        case playDefaultAudioTrack = "PlayDefaultAudioTrack"
        case rememberAudioSelections = "RememberAudioSelections"
        case rememberSubtitleSelections = "RememberSubtitleSelections"
        case subtitleLanguagePreference = "SubtitleLanguagePreference"
        case subtitleMode = "SubtitleMode"
    }
    public var audioLanguagePreference: String?
    public var displayMissingEpisodes: Bool?
    public var enableLocalPassword: Bool?
    public var enableNextEpisodeAutoPlay: Bool?
    public var hidePlayedInLatest: Bool?
    public var latestItemsExcludes: [String]?
    public var myMediaExcludes: [String]?
    public var orderedViews: [String]?
    public var playDefaultAudioTrack: Bool?
    public var rememberAudioSelections: Bool?
    public var rememberSubtitleSelections: Bool?
    public var subtitleLanguagePreference: String?
    public var subtitleMode: String?
}

public enum EmbyImageType: String {
    case thumb = "Thumb"
    case banner = "Banner"
    case disc = "Disc"
    case logo = "Logo"
    case primary = "Primary"
    case backdrop = "Backdrop"
    case chapter = "Chapter"
}

public enum EmbyPlayMethod: String, Codable {
    case transcode = "Transcode"
    case directStream = "DirectStream"
    case directPlay = "DirectPlay"
}

public enum EmbyRepeatMode: String, Codable {
    case repeatNone = "RepeatNone"
    case repeatAll = "RepeatAll"
    case repeatOne = "RepeatOne"
}

public struct EmbyQueueItem: Codable, Hashable {
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case playlistItemId = "PlaylistItemId"
    }
    public var id: String?
    public var playlistItemId: String?
    public init(id: String?, playlistItemId: String?) {
        self.id = id
        self.playlistItemId = playlistItemId
    }
}

public enum EmbyEventName: String, Codable {
    case timeUpdate = "timeupdate"
    case pause = "pause"
    case unpause = "unpause"
}

public struct PlaybackStartInfo: Codable, Hashable {
    
    enum CodingKeys: String, CodingKey, CaseIterable {
        case volumeLevel = "VolumeLevel"
        case isMuted = "IsMuted"
        case isPaused = "IsPaused"
        case repeatMode = "RepeatMode"
        case subtitleOffset = "SubtitleOffset"
        case playbackRate = "PlaybackRate"
        case maxStreamingBitrate = "MaxStreamingBitrate"
        case positionTicks = "PositionTicks"
        case playbackStartTimeTicks = "PlaybackStartTimeTicks"
        case subtitleStreamIndex = "SubtitleStreamIndex"
        case audioStreamIndex = "AudioStreamIndex"
        case playMethod = "PlayMethod"
        case playSessionId = "PlaySessionId"
        case mediaSourceId = "MediaSourceId"
        case canSeek = "CanSeek"
        case itemId = "ItemId"
        case playlistIndex = "PlaylistIndex"
        case playlistLength = "PlaylistLength"
        case nowPlayingQueue = "NowPlayingQueue"
    }
    public var volumeLevel: Int?
    public var isMuted: Bool?
    public var isPaused: Bool?
    public var repeatMode: EmbyRepeatMode?
    public var subtitleOffset: Int?
    public var playbackRate: Float?
    public var maxStreamingBitrate: Int64?
    public var positionTicks: Int64?
    public var playbackStartTimeTicks: Int64?
    public var subtitleStreamIndex: Int?
    public var audioStreamIndex: Int?
    
    public var playMethod: EmbyPlayMethod?
    public var playSessionId: String?
    public var mediaSourceId: String?
    public var canSeek: Bool?
    public var itemId: String?
    public var playlistIndex: Int?
    public var playlistLength: Int?
    public var nowPlayingQueue: [EmbyQueueItem]?
    
    public init() {
        
    }
}

public struct PlaybackStopInfo: Codable, Hashable {
    enum CodingKeys: String, CodingKey, CaseIterable {
        case volumeLevel = "VolumeLevel"
        case isMuted = "IsMuted"
        case isPaused = "IsPaused"
        case repeatMode = "RepeatMode"
        case subtitleOffset = "SubtitleOffset"
        case playbackRate = "PlaybackRate"
        case maxStreamingBitrate = "MaxStreamingBitrate"
        case positionTicks = "PositionTicks"
        case playbackStartTimeTicks = "PlaybackStartTimeTicks"
        case subtitleStreamIndex = "SubtitleStreamIndex"
        case audioStreamIndex = "AudioStreamIndex"
        case playMethod = "PlayMethod"
        case playSessionId = "PlaySessionId"
        case mediaSourceId = "MediaSourceId"
        case canSeek = "CanSeek"
        case itemId = "ItemId"
        case playlistIndex = "PlaylistIndex"
        case playlistLength = "PlaylistLength"
        case nowPlayingQueue = "NowPlayingQueue"
    }
    public var volumeLevel: Int?
    public var isMuted: Bool?
    public var isPaused: Bool?
    public var repeatMode: EmbyRepeatMode?
    public var subtitleOffset: Int?
    public var playbackRate: Float?
    public var maxStreamingBitrate: Int64?
    public var positionTicks: Int64?
    public var playbackStartTimeTicks: Int64?
    public var subtitleStreamIndex: Int?
    public var audioStreamIndex: Int?
    
    public var playMethod: EmbyPlayMethod?
    public var playSessionId: String?
    public var mediaSourceId: String?
    public var canSeek: Bool?
    public var itemId: String?
    public var playlistIndex: Int?
    public var playlistLength: Int?
    public var nowPlayingQueue: [EmbyQueueItem]?
    
    public init() {
        
    }
}

public struct PlaybackProgressInfo: Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case volumeLevel = "VolumeLevel"
        case isMuted = "IsMuted"
        case isPaused = "IsPaused"
        case repeatMode = "RepeatMode"
        case subtitleOffset = "SubtitleOffset"
        case playbackRate = "PlaybackRate"
        case maxStreamingBitrate = "MaxStreamingBitrate"
        case positionTicks = "PositionTicks"
        case playbackStartTimeTicks = "PlaybackStartTimeTicks"
        case subtitleStreamIndex = "SubtitleStreamIndex"
        case audioStreamIndex = "AudioStreamIndex"
        case playMethod = "PlayMethod"
        case playSessionId = "PlaySessionId"
        case mediaSourceId = "MediaSourceId"
        case canSeek = "CanSeek"
        case itemId = "ItemId"
        case eventName = "EventName"
        case playlistIndex = "PlaylistIndex"
        case playlistLength = "PlaylistLength"
    }
    public var volumeLevel: Int?
    public var isMuted: Bool?
    public var isPaused: Bool?
    public var repeatMode: EmbyRepeatMode?
    public var subtitleOffset: Int?
    public var playbackRate: Float?
    public var maxStreamingBitrate: Int64?
    public var positionTicks: Int64?
    public var playbackStartTimeTicks: Int64?
    public var subtitleStreamIndex: Int?
    public var audioStreamIndex: Int?
    public var playMethod: EmbyPlayMethod?
    public var playSessionId: String?
    public var mediaSourceId: String?
    public var canSeek: Bool?
    public var itemId: String?
    public var eventName: EmbyEventName?
    public var playlistIndex: Int?
    public var playlistLength: Int?
    
    public init() {
        
    }
}

public class EmbyStreamMetadata {
    
    public var initialSelectedSourceIndex: Int = 0
    
    public var sourceInfo: MediaSourceInfo? = nil
    public var audioStream: MediaStream? = nil
    public var subtitleStream: MediaStream? = nil
    
    public init() {
        
    }
}

public struct EmbyDisplayPreferencesUserSettings: Codable {
    
    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case sortOrder = "SortOrder"
        case customPrefs = "CustomPrefs"
        case client = "Client"
    }
    
    public let id: String
    public var customPrefs: [String: String]?
    public var sortOrder: String?
    public var client: String?
}

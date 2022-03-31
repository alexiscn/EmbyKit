//
//  Parameter.swift
//  
//
//  Created by alexis on 2022/3/31.
//

import Foundation

public struct Parameter: Codable {
    
    enum CodingKeys: String, CodingKey {
        case artistType = "ArtistType"
        case maxOfficialRating = "MaxOfficialRating"
        case hasThemeSong = "HasThemeSong"
        case hasThemeVideo = "HasThemeVideo"
        case hasSubtitles = "HasSubtitles"
        case hasSpecialFeature = "HasSpecialFeature"
        case hasTrailer = "HasTrailer"
        case adjacentTo = "AdjacentTo"
        case minIndexNumber = "MinIndexNumber"
        case minPlayers = "MinPlayers"
        case maxPlayers = "MaxPlayers"
        case parentIndexNumber = "ParentIndexNumber"
        case hasParentalRating = "HasParentalRating"
        case isHD = "IsHD"
        case locationTypes = "LocationTypes"
        case excludeLocationTypes = "ExcludeLocationTypes"
        case isMissing = "IsMissing"
        case isUnaired = "IsUnaired"
        case minCommunityRating = "MinCommunityRating"
        case minCriticRating = "MinCriticRating"
        case airedDuringSeason = "AiredDuringSeason"
        case minPremiereDate = "MinPremiereDate"
        case minDateLastSaved = "MinDateLastSaved"
        case minDateLastSavedForUser = "MinDateLastSavedForUser"
        case maxPremiereDate = "MaxPremiereDate"
        case hasOverview = "HasOverview"
        case hasImdbId = "HasImdbId"
        case hasTvdbId = "HasTvdbId"
        case excludeItemIds = "ExcludeItemIds"
        case startIndex = "StartIndex"
        case limit = "Limit"
        case recursive = "Recursive"
        case sortOrder = "SortOrder"
        case parentId = "ParentId"
        case fields = "Fields"
        case excludeItemTypes = "ExcludeItemTypes"
        case includeItemTypes = "IncludeItemTypes"
        case anyProviderIdEquals = "AnyProviderIdEquals"
        case filters = "Filters"
        case isFavorite = "IsFavorite"
        case isMovie = "IsMovie"
        case isSeries = "IsSeries"
        case isNews = "IsNews"
        case isKids = "IsKids"
        case isSports = "IsSports"
        case mediaTypes = "MediaTypes"
        case imageTypes = "ImageTypes"
        case sortBy = "SortBy"
        case isPlayed = "IsPlayed"
        case genres = "Genres"
        case officialRatings = "OfficialRatings"
        case tags = "Tags"
        case years = "Years"
        case enableImages = "EnableImages"
        case enableUserData = "EnableUserData"
        case imageTypeLimit = "ImageTypeLimit"
        case enableImageTypes = "EnableImageTypes"
        case person = "Person"
        case personIds = "PersonIds"
        case personTypes = "PersonTypes"
        case studios = "Studios"
        case studioIds = "StudioIds"
        case artists = "Artists"
        case artistIds = "ArtistIds"
        case albums = "Albums"
        case ids = "Ids"
        case videoTypes = "VideoTypes"
        case containers = "Containers"
        case audioCodecs = "AudioCodecs"
        case videoCodecs = "VideoCodecs"
        case subtitleCodecs = "SubtitleCodecs"
        case path = "Path"
        case userId = "UserId"
        case minOfficialRating = "MinOfficialRating"
        case isLocked = "IsLocked"
        case isPlaceHolder = "IsPlaceHolder"
        case hasOfficialRating = "HasOfficialRating"
        case groupItemsIntoCollections = "GroupItemsIntoCollections"
        case is3D = "Is3D"
        case seriesStatus = "SeriesStatus"
        case nameStartsWithOrGreater = "NameStartsWithOrGreater"
        case nameStartsWith = "NameStartsWith"
        case nameLessThan = "NameLessThan"
    }
    
    /// Artist or AlbumArtist
    public var artistType: String?
    
    /// Optional filter by maximum official rating (PG, PG-13, TV-MA, etc).
    public var maxOfficialRating: String?
    
    /// Optional filter by items with theme songs.
    public var hasThemeSong: Bool?

    /// Optional filter by items with theme videos.
    public var hasThemeVideo: Bool?
    
    /// Optional filter by items with subtitles.
    public var hasSubtitles: Bool?
    
    /// Optional filter by items with special features.
    public var hasSpecialFeature: Bool?
    
    /// Optional filter by items with trailers.
    public var hasTrailer: Bool?
    
    /// Optional. Return items that are siblings of a supplied item.
    public var adjacentTo: String?

    /// Optional filter by minimum index number.
    public var minIndexNumber: Int?
    
    /// Optional filter by minimum number of game players.
    public var minPlayers: Int?
    
    /// Optional filter by maximum number of game players.
    public var maxPlayers: Int?
    
    /// Optional filter by parent index number.
    public var parentIndexNumber: Int?

    /// Optional filter by items that have or do not have a parental rating.
    public var hasParentalRating: Bool?
    
    /// Optional filter by items that are HD or not.
    public var isHD: Bool?
    
    /// Optional. If specified, results will be filtered based on LocationType. This allows multiple, comma delimeted.
    public var locationTypes: String?

    /// Optional. If specified, results will be filtered based on LocationType. This allows multiple, comma delimeted.
    public var excludeLocationTypes: String?

    /// Optional filter by items that are missing episodes or not.
    public var isMissing: Bool?
    
    /// Optional filter by items that are unaired episodes or not.
    public var isUnaired: Bool?
    
    /// Optional filter by minimum community rating.
    public var minCommunityRating: Float?
    
    /// Optional filter by minimum critic rating.
    public var minCriticRating: Float?
    
    /// Gets all episodes that aired during a season, including specials.
    public var airedDuringSeason: Int?
    
    /// Optional. The minimum premiere date. Format = ISO
    public var minPremiereDate: String?
    
    /// Optional. The minimum premiere date. Format = ISO
    public var minDateLastSaved: String?
    
    /// Optional. The minimum premiere date. Format = ISO
    public var minDateLastSavedForUser: String?
    
    /// Optional. The maximum premiere date. Format = ISO
    public var maxPremiereDate: String?
    
    /// Optional filter by items that have an overview or not.
    public var hasOverview: Bool?

    /// Optional filter by items that have an imdb id or not.
    public var hasImdbId: Bool?
    
    /// Optional filter by items that have a tvdb id or not.
    public var hasTvdbId: Bool?

    /// Optional. If specified, results will be filtered by exxcluding item ids. This allows multiple, comma delimeted.
    public var excludeItemIds: String?
    
    /// Optional. The record index to start at. All items with a lower index will be dropped from the results.
    public var startIndex: Int?
    
    /// Optional. The maximum number of records to return
    public var limit: Int?
    
    /// When searching within folders, this determines whether or not the search will be recursive. true/false
    public var recursive: Bool?
    
    /// Sort Order - Ascending,Descending
    public var sortOrder: String?
    
    /// Specify this to localize the search to a specific item or folder. Omit to use the root
    public var parentId: String?
    
    /// Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimeted. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines
    public var fields: String?
    
    /// Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimeted.
    public var excludeItemTypes: String?
    
    /// Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimeted.
    public var includeItemTypes: String?
    
    /// Optional. If specified, result will be filtered to contain only items which match at least one of the specified IDs. Each provider ID must be in the form 'prov.id', e.g. 'imdb.tt123456'. This allows multiple, comma delimeted value pairs.
    public var anyProviderIdEquals: String?
    
    /// Optional. Specify additional filters to apply. This allows multiple, comma delimeted. Options: IsFolder, IsNotFolder, IsUnplayed, IsPlayed, IsFavorite, IsResumable, Likes, Dislikes
    public var filters: String?
    
    /// Optional filter by items that are marked as favorite, or not.
    public var isFavorite: Bool?
    
    /// Optional filter for movies.
    public var isMovie: Bool?
    
    /// Optional filter for movies.
    public var isSeries: Bool?
    
    /// Optional filter for news.
    public var isNews: Bool?
    
    /// Optional filter for kids.
    public var isKids: Bool?
    
    /// Optional filter for sports.
    public var isSports: Bool?
    
    /// Optional filter by MediaType. Allows multiple, comma delimited.
    public var mediaTypes: String?
    
    /// Optional. If specified, results will be filtered based on those containing image types. This allows multiple, comma delimited.
    public var imageTypes: String?
    
    /// Optional. Specify one or more sort orders, comma delimeted. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime
    public var sortBy: String?
    
    /// Optional filter by items that are played, or not.
    public var isPlayed: Bool?
    
    /// Optional. If specified, results will be filtered based on genre. This allows multiple, pipe delimeted.
    public var genres: String?
    
    /// Optional. If specified, results will be filtered based on OfficialRating. This allows multiple, pipe delimeted.
    public var officialRatings: String?
    
    /// Optional. If specified, results will be filtered based on tag. This allows multiple, pipe delimeted.
    public var tags: String?
    
    /// Optional. If specified, results will be filtered based on production year. This allows multiple, comma delimeted.
    public var years: String?
    
    /// Optional, include image information in output
    public var enableImages: Bool?
    
    /// Optional, include user data
    public var enableUserData: Bool?
    
    /// Optional, the max number of images to return, per image type
    public var imageTypeLimit: Int?
    
    /// Optional. The image types to include in the output.
    public var enableImageTypes: String?
    
    /// Optional. If specified, results will be filtered to include only those containing the specified person.
    public var person: String?
    
    /// Optional. If specified, results will be filtered to include only those containing the specified person.
    public var personIds: String?

    /// Optional. If specified, along with Person, results will be filtered to include only those containing the specified person and PersonType. Allows multiple, comma-delimited
    public var personTypes: String?
    
    /// Optional. If specified, results will be filtered based on studio. This allows multiple, pipe delimeted.
    public var studios: String?
    
    /// Optional. If specified, results will be filtered based on studio. This allows multiple, pipe delimeted.
    public var studioIds: String?
    
    /// Optional. If specified, results will be filtered based on artist. This allows multiple, pipe delimeted.
    public var artists: String?
    
    /// Optional. If specified, results will be filtered based on artist. This allows multiple, pipe delimeted.
    public var artistIds: String?

    /// Optional. If specified, results will be filtered based on album. This allows multiple, pipe delimeted.
    public var albums: String?
    
    /// Optional. If specific items are needed, specify a list of item id's to retrieve. This allows multiple, comma delimited.
    public var ids: String?
    
    /// Optional filter by VideoType (videofile, dvd, bluray, iso). Allows multiple, comma delimeted.
    public var videoTypes: String?
    
    /// Optional filter by Container. Allows multiple, comma delimeted.
    public var containers: String?
    
    /// Optional filter by AudioCodec. Allows multiple, comma delimeted.
    public var audioCodecs: String?
    
    /// Optional filter by VideoCodec. Allows multiple, comma delimeted.
    public var videoCodecs: String?
    
    /// Optional filter by SubtitleCodec. Allows multiple, comma delimeted.
    public var subtitleCodecs: String?
    
    /// Optional filter by Path.
    public var path: String?
    
    /// User Id
    public var userId: String?
    
    /// Optional filter by minimum official rating (PG, PG-13, TV-MA, etc).
    public var minOfficialRating: String?
    
    /// Optional filter by items that are locked.
    public var isLocked: Bool?

    /// Optional filter by items that are placeholders
    public var isPlaceHolder: Bool?
    
    /// Optional filter by items that have official ratings
    public var hasOfficialRating: Bool?
    
    /// Whether or not to hide items behind their boxsets.
    public var groupItemsIntoCollections: Bool?
    
    /// Optional filter by items that are 3D, or not.
    public var is3D: Bool?
    
    /// Optional filter by Series Status. Allows multiple, comma delimeted.
    public var seriesStatus: String?
    
    /// Optional filter by items whose name is sorted equally or greater than a given input string.
    public var nameStartsWithOrGreater: String?
    
    /// Optional filter by items whose name is sorted equally than a given input string.
    public var nameStartsWith: String?
    
    /// Optional filter by items whose name is equally or lesser than a given input string.
    public var nameLessThan: String?
}

extension Parameter {
    
    var querys: [String: Any] {
        do {
            let data = try JSONEncoder().encode(self)
            if let dict = try JSONSerialization.jsonObject(with: data) as? [String: Any] {
                return dict
            }
            return [:]
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    
}

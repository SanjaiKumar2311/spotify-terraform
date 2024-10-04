resource "spotify_playlist" "kollywood"{
    name  = "kollywood"
    tracks=["1hHrBEkN0JIaeFPegy4Xak"]
}

data "spotify_search_track" "eninem" {
  artist = "Eminem"
  limit = 3
}

resource "spotify_playlist" "slimShady" {
  name  = "Slim Shady"
  tracks = [
    data.spotify_search_track.eninem.tracks[0].id,
    data.spotify_search_track.eninem.tracks[1].id,
    data.spotify_search_track.eninem.tracks[2].id
  ]
}



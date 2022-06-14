Feature: Spotify API

  Background:
    * url baseUrl
    * header Authorization = 'Bearer ' + myToken
    * def UID = '31p4hsslvqno7sc57pqrthnxp62m'
    @SpotifyAPI
    Scenario: Create Playlist, Search A Song And Add To A Playlist
      * def requestBody = {"name": "Mentorlabs Challenge APİ3","description": "Api","public": false}
      Given path 'users/'+UID+'/playlists'
      And request requestBody
      When method post
      Then status 201
      And def playlistID = response.id
      * header Authorization = 'Bearer ' + myToken

      Given path 'search'
      And param q = 'Bohemian Rhapsody'
      And param type = 'track'
      When method get
      Then status 200
      And def trackURI = response.tracks.items[0].uri
      * header Authorization = 'Bearer ' + myToken

      Given path 'playlists/'+playlistID+'/tracks'
      * def reqBody = {uris:[#(trackURI)]}
      And request reqBody
      When method post
      Then status 201




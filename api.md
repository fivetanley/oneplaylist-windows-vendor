FORMAT: 1A
HOST: https://oneplaylist.herokuapp.com

# One Playlist API

One User. One Playlist. Limited Songs. Infinite Fun.

# Group Authentication

Every request performed against the One Playlist API happens as a
particular user. If no user has been authenticated, then a special
"anonymous" user will be created for the request and signed in. In
order to change which user is signed in, you can use these
authentication end points.

## Sign In [/users/sign_in.json]

### Authenticate User [POST]

Authenticates user by password, and associates them with this
session. They will remain associated with subsequent requests until a
call to sign out is made. If successful, this will respond with a user
resource as well as their side-loaded playlist and playlist
items. The response would be the same as a call to `/user.json`

+ Request

    + Body

        ```json
        {
          "user": {
            "email": "test@sample.com",
            "password": "password"
          }
        }
        ```

+ Response 201

```json
    {
      "user": {
        "id": 1,
        "playlist_id": 1
      },
      "playlists": [
        {
          "id": 1,
          "playlist_item_ids": [1, 2]
        }
      ],
      "playlist_items": [
        {
          "id": 1,
          "song_id": 3
        },
        {
          "id": 2,
          "song_id": 2
        }
      ]
    }
```


+ Response 401

```json
{"errors": {"password": ["invalid password"]}}
```


## Sign Out [/users/sign_out.json]

### Unauthenticate User [POST]

Logs the current user out. The response to this will be an anonymous
user with an empty, side-loaded playlist.

+ Response 200

```json
    {
      "user": {
        "id": 10,
        "playlist_id": 1
      },
      "playlists": [
        {
          "id": 10,
          "playlist_item_ids": []
        }
      ],
      "playlist_items": []
    }
```

# Group Songs

Songs are the items for sale in One Playlist. They contain a description
of those items as well as pricing data.

## Song List [/songs.json]

+ Model

    + Body

        ```json
            {
              "songs": [
                {
                  "id": 1,
                  "name": "Hotel Califoria",
                  "artist": "Eagles",
                  "amazon_url": "http://www.amazon.com/gp/product/B00DAKW848/ref=dm_mu_dp_trk1"
                },
                {
                  "id": 3,
                  "name": "What's Going On",
                  "artist": "Marvin Gaye",
                  "amazon_url": "http://www.amazon.com/gp/product/B000V66LEC/ref=dm_mu_dp_trk1"
                },
                {
                  "id": 4,
                  "name": "Polka Your Eyes Out",
                  "artist": "Weird Al Yankovic",
                  "amazon_url": "http://www.amazon.com/dp/B00137T5J6/ref=dm_ws_tlw_trk4"
                }
              ]
            }
        ```

### Get Songs [GET]
Retrieve all songs in the system

+ Response 200

    [Song List][]


# Group User

When interacting with the One Playlist API, there will always be an
associated user for each request. If no call has been made to
authenticate, then an anonymous user will be created and signed in
automatically.

## User [/user.json]

### Fetch User [GET]

Retrieve the current user. If no user has been authenticated, then
this will return a new anonymous user and associated it with this
session.

> Note that this will sideload the users playlist as well as any
> playlist items that happen to be present in it.

+ Response 200

```json
    {
      "user": {
        "id": 1,
        "playlist_id": 1
      },
      "playlists": [
        {
          "id": 1,
          "playlist_item_ids": [1, 2]
        }
      ],
      "playlist_items": [
        {
          "id": 1,
          "song_id": 3
        },
        {
          "id": 2,
          "song_id": 5
        }
      ]
    }
```

# Group Playlist

Every user in the system has a playlist and in each playlist
is a collection of playlist items. These represent songs that the user
has selected for purchase. To add a song, create a playlist item. To
remove a song, or delete the playlist item.

## Playlist Items [/playlist/items.json]

### Create Playlist Item [POST]

Adds a song, specified by `song_id` to the user's playlist.

+ Request

    + Headers

            Content-Type: application/json

    + Body

        ```json
            {
              "playlist_item": {
                "song_id": 3
              }
            }
        ```
+ Response 201

    + Body

        ```json
        {
          "playlist_item": {
            "id": 5,
            "song_id": 3
          }
        }
        ```
+ Response 422

    + Body

        ```json
        {"errors": {"song_id": ["can't be blank"]}}
        ```

## Playlist Item [/playlist/items/{id}.json]

### Remove Playlist Item [DELETE]

If a song is to be removed _entirely_ from a user's playlist,
then just delete it.

+ Response 204

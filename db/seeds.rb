User.create!([
  {name: "Frodo Baggins", email: "frodo@email.com", password_digest: "$2a$12$iTSsYBPVBScCR5R.ibC21uqYy0TeAyyYA1iSzgg.ha6u7.LFVxN8O"},
  {name: "Sam Gamgee", email: "sam@email.com", password_digest: "$2a$12$QBpNBwsrBf5xEU5ohreARefVIvEEO5aUAriShfDw0BWbZnSH8OU4K"},
  {name: "Pippin Took", email: "pippin@email.com", password_digest: "$2a$12$70JQpB501MQ0/7cUUMzj4.sguxtgfntrwAUWxJ.Af6ZcdaLc/7SP2"}
])
Show.create!([
  {title: "Into the Woods"},
  {title: "In the Heights"},
  {title: "Fun Home"}
])
Genre.create!([
  {name: "Contemporary"},
  {name: "Golden Age"},
  {name: "Classic"}
])
Tempo.create!([
  {name: "Ballad"},
  {name: "Power Ballad"},
  {name: "Uptempo"}
])
Songwriter.create!([
  {composer: "Stephen Sondheim", lyrics: "Stephen Sondheim"},
  {composer: "Lisa Kron", lyrics: "Lisa Kron"},
  {composer: "Lin-Manuel Miranda", lyrics: "Lin-Manuel Miranda"}
])
Song.create!([
  {title: "Changing My Major", songwriter_id: 2, show_id: 3, genre_id: 1, tempo_id: 2},
  {title: "I Know Things Now", songwriter_id: 1, show_id: 1, genre_id: 3, tempo_id: 2},
  {title: "Everything I Know", songwriter_id: 3, show_id: 2, genre_id: 1, tempo_id: 1},
  {title: "Ring of Keys", songwriter_id: 2, show_id: 3, genre_id: 1, tempo_id: 2}
])
SavedSong.create!([
  {song_id: 1, user_id: 3},
  {song_id: 4, user_id: 3},
  {song_id: 2, user_id: 1},
  {song_id: 3, user_id: 1}
])
Note.create!([
  {description: "changing my major note!!!", saved_song_id: 1, user_id: 2},
  {description: "updating this note!!!", saved_song_id: 1, user_id: 2},
  {description: "this is a song note", saved_song_id: 1, user_id: 2},
  {description: "great song choice!", saved_song_id: 1, user_id: 2},
  {description: "Great audition song for In the Heights", saved_song_id: 1, user_id: 3},
  {description: "test note bug", saved_song_id: 4, user_id: 1},
  {description: "a test note for the bug", saved_song_id: 3, user_id: 2},
  {description: nil, saved_song_id: 4, user_id: 1},
  {description: "testing this note", saved_song_id: 3, user_id: 1},
  {description: "This is a note!", saved_song_id: 2, user_id: 1}
])


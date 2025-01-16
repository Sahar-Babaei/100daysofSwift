import Cocoa

let albums = ["Red", "Fearless", "1989", "Folklore", "Red"];

print("there are \(albums.count) albums in this list")

let tsAlbums = Set(albums)
print("There are \(tsAlbums.count) unique TS albums in this list")

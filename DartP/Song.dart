import 'dart:io';

class Song{
  String name;
  Song(this.name);
}

class AddressSong{
  List<Song> songs = [];

  void addSong(Song song)
  {
    songs.add(song);
  }
  void removeSong(String name)
  {
    songs.removeWhere((song) => song.name == name);
  }

  void displaySongs()
  {
    if(songs.isEmpty)
      {
        print("Danh sach trong");
      }
    else
      {
        print("Danh sach: ");
        for(var song in songs)
          {
            print("Ten bai hat: ${song.name}");
          }
      }
  }
}


void main()
{
  var addressSong = AddressSong();

  while(true)
    {
      print("1.Them bai hat ");
      print("2.Xoa bai hat ");
      print("3.Hien thi danh sach ");
      print("4.Thoat");
      var readLineSync = stdin.readLineSync();
      var choice = int.parse(readLineSync!);

      switch(choice) {
        case 1:
          print("Nhap ten bai hat: ");
          var name = stdin.readLineSync();
          var song = Song(name!);
          addressSong.addSong(song);
          print("Bai hat da duoc them");
          break;

        case 2:
          print("Nhap ten bai hat muon xoa: ");
          var name = stdin.readLineSync();
          addressSong.removeSong(name!);
          print("Bai hat da duoc xoa.");
          break;

        case 3:
          addressSong.displaySongs();
          break;
        case 4:
          print("Ket thuc");
          return;

        default:
          print("Lua chon khong hop le");
      }
    }
}
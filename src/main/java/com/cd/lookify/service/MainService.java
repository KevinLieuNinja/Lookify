package com.cd.lookify.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cd.lookify.models.Song;
import com.cd.lookify.repositories.SongRepository;

@Service
public class MainService {
	public final SongRepository songRep;
	
	public MainService(SongRepository songRep) {
		this.songRep = songRep;
	}
	
	public List<Song> getAllSongs(){
		return this.songRep.findAll();
	}

//	creating a song with a song object
	
	public void createSong(Song song) {
		 songRep.save(song);
	}
//	show
	public Song findSong(Long id ) {
		Song song = songRep.findById(id).orElse(null);
		if(song == null) {
			return null;
		}
		return song;
	}
//	delete
	public void deleteSong(Long id) {
		this.songRep.deleteById(id);
	}
//	search 
	public List<Song> findSongByArtist(String search) {
		return this.songRep.findByArtistContaining(search); 
	
	}
}

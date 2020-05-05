package com.cd.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cd.lookify.models.Song;
import com.cd.lookify.service.MainService;


@Controller
public class LookifyController {
	public final MainService mainSer;
	
	public LookifyController(MainService mainSer) {
		this.mainSer = mainSer;
	}
	@GetMapping("/")
	public String index() {
		return "Index.jsp";
	}
	
	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		List<Song> songs = mainSer.getAllSongs();
		model.addAttribute("allSongs", songs);
		return "Dashboard.jsp";
	}
	@GetMapping("/songs/new")
	public String newSong(@ModelAttribute("song")Song song) {
		return "Create.jsp";
	}
	@PostMapping("/songs/new")
	public String subSong(@Valid @ModelAttribute("song")Song song, BindingResult results) {
		if(results.hasErrors()) {
			return "Create.jsp";
		}
		else {
			mainSer.createSong(song);
			return "redirect:/dashboard";
		}
	}
	@GetMapping("/song/{id}")
	public String showSong(@PathVariable("id")Long id,Model model ) {
		Song song = mainSer.findSong(id);
		model.addAttribute("song", song);
		return "Show.jsp";
	}
	
	@DeleteMapping("/song/{id}")
	public String delete(@PathVariable("id")Long id ){
		mainSer.deleteSong(id);
		return "redirect:/dashboard";
	}
	
	@GetMapping("/search")
	public String search(@RequestParam(value="search")String search, Model model) {
		List<Song> results = mainSer.findSongByArtist(search);
		model.addAttribute("results", results);
		return "Results.jsp";
	}
} 

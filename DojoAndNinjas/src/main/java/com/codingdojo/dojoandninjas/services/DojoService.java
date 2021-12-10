package com.codingdojo.dojoandninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.dojoandninjas.models.Dojo;
import com.codingdojo.dojoandninjas.models.Ninja;
import com.codingdojo.dojoandninjas.repositories.DojoRepository;
import com.codingdojo.dojoandninjas.repositories.NinjaRepository;

@Service
public class DojoService {

	//Can use autowire to cut down on code, but must autowire each one separately.
	private DojoRepository dojoRepo;
	private NinjaRepository ninjaRepo;
	
	public DojoService(DojoRepository dojoRepo, NinjaRepository ninjaRepo) {
		this.dojoRepo = dojoRepo;
		this.ninjaRepo = ninjaRepo;
	}
	public List<Ninja> allNinjas(){
		return ninjaRepo.findAll();
	}
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
	}
	public Ninja saveNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	public Dojo saveDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
}

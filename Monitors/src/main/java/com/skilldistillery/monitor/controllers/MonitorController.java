package com.skilldistillery.monitor.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.monitor.data.MonitorDAO;
import com.skilldistillery.monitor.entities.Monitor;

@Controller
public class MonitorController {

	@Autowired
	private MonitorDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String home(Model model) {
		List<Monitor> monitors = dao.findAll();
//		model.addAttribute("Samsung", dao.findById(1));//DEBUG DELETE later
		model.addAttribute("monitors", monitors);
		return "index";
	}
	
	@RequestMapping(path="createMonitor.do")
	public String createMonitor(Model model) {
		return "createMonitor";
	}
	
	@RequestMapping(path="submitCreateMonitorForm.do")
	public String submitMonitor(Monitor monitor, Model model) {
		monitor = dao.createMonitor(monitor);
		List<Monitor> monitors = dao.findAll();
		model.addAttribute("monitors", monitors);
		return "index";
	}
	
	@RequestMapping(path="deleteMonitor.do")
	public String deleteMonitor(Integer monitorId, Model model) {
		dao.deleteMonitor(monitorId);
		List<Monitor> monitors = dao.findAll();
		model.addAttribute("monitors", monitors);
		return "index";
	}
}

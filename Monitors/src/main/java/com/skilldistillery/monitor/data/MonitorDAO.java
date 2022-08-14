package com.skilldistillery.monitor.data;

import java.util.List;

import com.skilldistillery.monitor.entities.Monitor;

public interface MonitorDAO {
	Monitor findById(int monitorId);
	List<Monitor> findAll();
	boolean deleteMonitor(Integer monitorId);
	Monitor createMonitor(Monitor monitor);
	Monitor editMonitor(Monitor monitor);
	
}

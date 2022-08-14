package com.skilldistillery.monitor.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.monitor.entities.Monitor;

@Service
@Transactional
public class MonitorDaoImpl implements MonitorDAO{

	@PersistenceContext
	private EntityManager em;
	

	@Override
	public Monitor findById(int monitorId) {
		return em.find(Monitor.class, monitorId);
	}

	@Override
	public List<Monitor> findAll() {
		String jpql = "";
		jpql= "SELECT m FROM Monitor m ORDER BY m.id";
		return em.createQuery(jpql, Monitor.class).getResultList();
	}
	
	@Override
	public boolean deleteMonitor(Integer monitorId) {
		Monitor monitorToDelete = em.find(Monitor.class, monitorId);
		if (monitorToDelete != null) {
			em.remove(monitorToDelete);
			return true;
		}
		return false;
	}

	@Override
	public Monitor createMonitor(Monitor monitor) {
		em.persist(monitor);
		em.flush();
		return monitor;
	}
	
	
}
	
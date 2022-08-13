package com.skilldistillery.monitor.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class MonitorTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Monitor monitor;
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAMonitors");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		monitor = em.find(Monitor.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		monitor = null;
	}

	@Test
	void test() {
		assertNotNull(monitor);
		assertEquals("Samsung", monitor.getMake());
		assertEquals("Odyssey", monitor.getModel());
	}
	
	@Test
    void test_Monitor_entity_basic_PLACEHOLDER() {
    }

}

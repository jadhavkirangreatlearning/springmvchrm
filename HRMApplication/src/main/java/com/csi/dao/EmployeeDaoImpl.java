package com.csi.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.csi.model.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	SessionFactory factory;

	Session session;

	public EmployeeDaoImpl(SessionFactory factory) {
		// TODO Auto-generated constructor stub
		this.factory = factory;
		session = factory.openSession();

	}

	@Transactional
	@Override
	public void save(Employee employee) {
		// TODO Auto-generated method stub

		Transaction transaction = session.beginTransaction();

		session.saveOrUpdate(employee);
		transaction.commit();
	}

	@Transactional
	@Override
	public Employee findById(int empId) {
		// TODO Auto-generated method stub
		Employee employee = session.get(Employee.class, empId);

		return employee;
	}

	@Transactional
	@Override
	public List<Employee> findAll() {
		// TODO Auto-generated method stub

		return session.createQuery("from Employee").list();
	}

	@Transactional
	@Override
	public void deleteById(int empId) {
		// TODO Auto-generated method stub
		Transaction transaction = session.beginTransaction();
		Employee employee = session.get(Employee.class, empId);
		session.delete(employee);
		transaction.commit();
	}

}

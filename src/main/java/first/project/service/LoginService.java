package first.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import first.project.dao.LoginDao;

@Service
public class LoginService {
	@Autowired
	LoginDao dao;
}
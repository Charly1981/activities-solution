package com.astropay.springboot.app.activities.models.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.astropay.springboot.app.activities.models.dao.ActivityDao;
import com.astropay.springboot.app.activities.models.entity.Activity;

@Service
public class ActivityServiceImpl implements IActivityService {

	@Autowired
	private ActivityDao actividadDao;

	@Override
	@Transactional(readOnly = true)
	public Page<Activity> findAll(int pageNo, int pageSize, String sortBy, String sortDirection) {
		Pageable pageable = paginator(pageNo, pageSize, sortBy, sortDirection);

		return actividadDao.findAll(pageable);
	}

	@Override
	@Transactional(readOnly = true)
	public Activity findById(Long id) {
		return actividadDao.findById(id).orElse(null);
	}

	@Override
	@Transactional
	public Activity save(Activity actividad) {
		return actividadDao.save(actividad);
	}

	@Override
	@Transactional
	public void deleteById(Long id) {
		actividadDao.deleteById(id);

	}

	@Override
	public Page<Activity> findByUserId(Long userId, int pageNo, int pageSize, String sortBy, String sortDirection) {
		Pageable pageable = paginator(pageNo, pageSize, sortBy, sortDirection);

		return actividadDao.findByUserId(userId, pageable);

	}

	@Override
	public Page<Activity> findByUserIdandActivityType(Long userId, String activityType, int pageNo, int pageSize,
			String sortBy, String sortDirection) {
		Pageable pageable = paginator(pageNo, pageSize, sortBy, sortDirection);

		return actividadDao.findByUserIdandActivityType(userId, activityType, pageable);
	}

	@Override
	public Activity findByActivityId(String activityId) {
		return actividadDao.findByActivityId(activityId);
	}

	private Pageable paginator(int pageNo, int pageSize, String sortBy, String sortDirection) {
		Sort.Direction direction = Sort.Direction.ASC;

		if (sortDirection != null && sortDirection.equalsIgnoreCase("desc")) {
			direction = Sort.Direction.DESC;
		}

		Sort sort = Sort.by(direction, sortBy);
		Pageable pageable = PageRequest.of(pageNo, pageSize, sort);

		return pageable;
	}

}

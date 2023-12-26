package com.astropay.springboot.app.activities.models.service;

import org.springframework.data.domain.Page;

import com.astropay.springboot.app.activities.models.entity.Activity;

public interface IActivityService {

	public Page<Activity> findAll(int pageNo, int pageSize, String sortBy, String sortDirection);

	public Activity findById(Long id);

	public Activity save(Activity actividad);

	public void deleteById(Long id);

	public Page<Activity> findByUserId(Long userId, int pageNo, int pageSize, String sortBy, String sortDirection);

	public Page<Activity> findByUserIdandActivityType(Long userId, String activityType, int pageNo, int pageSize,
			String sortBy, String sortDirection);

	public Activity findByActivityId(String activityId);

}

package com.astropay.springboot.app.activities.models.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

import com.astropay.springboot.app.activities.models.entity.Activity;

@RepositoryRestResource
public interface ActivityDao extends PagingAndSortingRepository<Activity, Long> {

	@RestResource
	public List<Activity> findByActivityType(@Param("activityType") String activityType);

	@RestResource
	public Page<Activity> findByUserId(@Param("userId") Long userId, Pageable pageable);

	@Query("select a from Activity a where a.userId=?1 and a.activityType=?2")
	public Page<Activity> findByUserIdandActivityType(@Param("userId") Long userId, @Param("activityType") String activityType, Pageable pageable);

	@RestResource
	public Activity findByActivityId(@Param("activityId") String activityId);

}

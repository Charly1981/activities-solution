package com.astropay.springboot.app.activities.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.astropay.springboot.app.activities.models.entity.Activity;
import com.astropay.springboot.app.activities.models.service.IActivityService;

@RestController
public class ActivitiesController {

	@Autowired
	private IActivityService activityService;

	@GetMapping("/activities")
	public Page<Activity> getAllActivities(@RequestParam(defaultValue = "0") int pageNo,
			@RequestParam(defaultValue = "10") int pageSize, @RequestParam(defaultValue = "id") String sortBy,
			@RequestParam(defaultValue = "ASC") String sortDirection) {

		return activityService.findAll(pageNo, pageSize, sortBy, sortDirection);
	}

	@PostMapping("/activities/add")
	@ResponseStatus(HttpStatus.CREATED)
	public Activity createActivity(@RequestBody Activity activity) {
		return activityService.save(activity);
	}

	@PutMapping("/activities/edit/{id}")
	@ResponseStatus(HttpStatus.CREATED)
	public Activity updateActivity(@RequestBody Activity activity, @PathVariable Long id) {
		Activity activityDb = activityService.findById(id);

		activityDb.setActivityId(activity.getActivityId());
		activityDb.setActivityType(activity.getActivityType());

		return activityService.save(activityDb);

	}

	@DeleteMapping("/activities/delete/{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void deleteActivity(@PathVariable Long id) {
		activityService.deleteById(id);
	}

	@GetMapping("/{userId}/activities")
	public Page<Activity> findActivityByUserId(@PathVariable Long userId, @RequestParam (defaultValue = "") String activityType,
			@RequestParam(defaultValue = "0") int pageNo, @RequestParam(defaultValue = "10") int pageSize,
			@RequestParam(defaultValue = "id") String sortBy, @RequestParam(defaultValue = "ASC") String sortDirection)
			throws InterruptedException {

		if (!activityType.equals("")) {
			return activityService.findByUserIdandActivityType(userId, activityType.toUpperCase(), pageNo, pageSize, sortBy, sortDirection);
		}

		else {
			return activityService.findByUserId(userId, pageNo, pageSize, sortBy, sortDirection);
		}

	}


	@GetMapping("/{userId}/activities/{activityId}")
	public Activity findActivityByActivityId(@PathVariable String activityId) throws InterruptedException {
		return activityService.findByActivityId(activityId);
	}
}

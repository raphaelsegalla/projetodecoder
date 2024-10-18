package com.ead.course.services;

import com.ead.course.models.CourseModel;
import com.ead.course.models.CourseUserModel;

import java.util.UUID;

public interface CourseUserService {
    boolean existsByCourseAndUserId(CourseModel courseModel, UUID userid);

    CourseUserModel save(CourseUserModel courseUserModel);

    CourseUserModel saveAndSendSubscriptionInCourse(CourseUserModel courseUserModel);

    boolean existsByUserId(UUID userId);

    void deleteCourseUserByUser(UUID userId);
}

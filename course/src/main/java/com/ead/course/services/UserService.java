package com.ead.course.services;

import com.ead.course.models.CourseModel;
import com.ead.course.models.UserModel;
import com.ead.course.specifications.SpecificationTemplate;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import java.util.UUID;

public interface UserService {

    Page<UserModel> findAll(Pageable pageable, Specification<UserModel> spec);

}

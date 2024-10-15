package com.ead.course.validation;

import com.ead.course.clients.AuthUserClient;
import com.ead.course.dtos.CourseDto;
import com.ead.course.dtos.UserDto;
import com.ead.course.enums.UserStatus;
import com.ead.course.enums.UserType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.client.HttpStatusCodeException;

import java.util.UUID;

@Component
public class CourseValidator implements Validator {

    @Autowired
    private Validator validator;

    @Autowired
    AuthUserClient authUserClient;

    @Override
    public boolean supports(Class<?> aClass) {
        return false;
    }

    @Override
    public void validate(Object o, Errors errors) {
        CourseDto courseDto = (CourseDto) o;
        validator.validate(courseDto, errors);
        if (!errors.hasErrors()) {
            validateUserInstructor(courseDto.getUserInstructor(), errors);
        }
    }

    private void validateUserInstructor(UUID userInstructor, Errors errors) {
        ResponseEntity<UserDto> responseUserInstructor;
        try {
            responseUserInstructor = authUserClient.getOneUsersById(userInstructor);
            if (responseUserInstructor.getBody().getUserType().equals(UserType.STUDENT)) {
                errors.rejectValue("userInstructor", "UserInstructorError", "User must be a INSTRUCTOR o ADMIN.");
            }
            if (responseUserInstructor.getBody().getUserStatus().equals(UserStatus.BLOCKED)) {
                errors.rejectValue("userInstructor", "UserInstructorError", "User don't must be BLOCKED.");
            }
        } catch (HttpStatusCodeException e) {
            if (e.getStatusCode().equals(HttpStatus.NOT_FOUND)) {
                errors.rejectValue("userInstructor", "UserInstructorError", "Instructor not found.");
            }
        }
    }
}

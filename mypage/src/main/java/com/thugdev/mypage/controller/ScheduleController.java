package com.thugdev.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/schedule")
public class ScheduleController {

	@RequestMapping(value="/ocean", method=RequestMethod.GET)
	public String oceanGet() {
		return "schedule/ocean"; 
	}

}

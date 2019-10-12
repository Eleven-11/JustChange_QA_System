package com.heeexy.example.controller.system;

import com.alibaba.fastjson.JSONObject;
import com.heeexy.example.service.interfase.system.CourseBaseService;
import com.heeexy.example.util.CommonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * 严脱兔
 * @Date:2019-10-10
 */
@RestController
@RequestMapping("/courseBase")
public class CourseBaseController {
	@Autowired
	private CourseBaseService courseBaseService;

	/**
	 * 查询课程列表
	 */
//	@RequiresPermissions("courseBase:list")
	@GetMapping("/list")
	public JSONObject listCourseBase(HttpServletRequest request) {
		JSONObject listCourseBase = courseBaseService.listCourseBase(CommonUtil.request2Json(request));
		return listCourseBase;
	}

	/**
	 * 新增课程
	 */
//	@RequiresPermissions("courseBase:add")
	@PostMapping("/addCourseBase")
	public JSONObject addCourseBase(@RequestBody JSONObject requestJson) {
		CommonUtil.hasAllRequired(requestJson, "course_name, course_picture, summary,state");
		return courseBaseService.addCourseBase(requestJson);
	}

	/**
	 * 修改状态为 未确认的课程
	 */
	//@RequiresPermissions("courseBase:update")
	@PostMapping("/updateCourseBase")
	public JSONObject updateCourseBase(@RequestBody JSONObject requestJson) {
		CommonUtil.hasAllRequired(requestJson, " course_name,course_picture, summary, state,id");
		return courseBaseService.updateCourseBase(requestJson);
	}


}

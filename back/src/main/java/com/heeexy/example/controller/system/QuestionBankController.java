package com.heeexy.example.controller.system;

import com.alibaba.fastjson.JSONObject;
import com.heeexy.example.service.interfase.system.QuestionBankService;
import com.heeexy.example.util.CommonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * 严脱兔
 * @Date:2019-10-10
 */
@RestController
@RequestMapping("/questionBank")
public class QuestionBankController {
	@Autowired
	private QuestionBankService questionBankService;

	/**
	 * 查询题库列表
	 */
//	@RequiresPermissions("courseBase:list")
	@GetMapping("/list")
	public JSONObject listQuestionBank(HttpServletRequest request) {
		JSONObject listQuestionBank = questionBankService.listQuestionBank(CommonUtil.request2Json(request));
		return listQuestionBank;
	}

	/**
	 * 新增题库
	 */
//	@RequiresPermissions("courseBase:add")
	@PostMapping("/addQuestionBank")
	public JSONObject addQuestionBank(@RequestBody JSONObject requestJson) {
		CommonUtil.hasAllRequired(requestJson, "question_bank_name, state, is_del,examinationPepers");
		return questionBankService.addQuestionBank(requestJson);
	}

	/**
	 * 修改状态为 未确认的题库
	 */
	//@RequiresPermissions("courseBase:update")
	@PostMapping("/updateQuestionBank")
	public JSONObject updateQuestionBank(@RequestBody JSONObject requestJson) {
		CommonUtil.hasAllRequired(requestJson, " question_bank_name,state, is_del,id");
		return questionBankService.updateQuestionBank(requestJson);
	}


}

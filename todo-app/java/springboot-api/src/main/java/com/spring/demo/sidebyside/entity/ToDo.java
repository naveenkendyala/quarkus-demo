package com.spring.demo.sidebyside.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ToDo")
public class ToDo {

	//Use @GeneratedValue for automatically generating the Id
	@Id
	@Column(name="ID")
	private Integer id;
	
	@Column(name="TASK_NAME")
	private String task;
	
	@Column(name="IS_COMPLETE")
	private String isComplete;
	
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @return the task
	 */
	public String getTask() {
		return task;
	}
	/**
	 * @param task the task to set
	 */
	public void setTask(String task) {
		this.task = task;
	}

	public String getIsComplete() {
		return isComplete;
	}

	public void setIsComplete(String isComplete) {
		this.isComplete = isComplete;
	}

}

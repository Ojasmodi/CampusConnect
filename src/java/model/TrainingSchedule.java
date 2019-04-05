/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author OJAS MODI
 */
public class TrainingSchedule {
    private int cno;
    private String course;
    private String trainer;
    private String monthOfProgram;
    private int noOfStudents;

    public int getCno() {
        return cno;
    }

    public void setCno(int cno) {
        this.cno = cno;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getTrainer() {
        return trainer;
    }

    public void setTrainer(String trainer) {
        this.trainer = trainer;
    }

    public String getMonthOfProgram() {
        return monthOfProgram;
    }

    public void setMonthOfProgram(String monthOfProgram) {
        this.monthOfProgram = monthOfProgram;
    }

    public int getNoOfStudents() {
        return noOfStudents;
    }

    public void setNoOfStudents(int noOfStudents) {
        this.noOfStudents = noOfStudents;
    }

    public TrainingSchedule(int cno, String course, String trainer, String monthOfProgram, int noOfStudents) {
        this.cno = cno;
        this.course = course;
        this.trainer = trainer;
        this.monthOfProgram = monthOfProgram;
        this.noOfStudents = noOfStudents;
    }
    
}

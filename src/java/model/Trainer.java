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
public class Trainer {
    private String name;
    private int age;
    private long phoneno;
    private String mailId;
    private int TId;
    private String skill1,skill2,skill3;
    private int experience;
    private String MayAvailability,JuneAvailability,JulyAvailability;
    
     public Trainer() {
    }

    public long getPhoneno() {
        return phoneno;
    }

    public void setPhoneno(long phoneno) {
        this.phoneno = phoneno;
    }

    public String getMailId() {
        return mailId;
    }

    public void setMailId(String mailId) {
        this.mailId = mailId;
    }

    public String getMayAvailability() {
        return MayAvailability;
    }

    public void setMayAvailability(String MayAvailability) {
        this.MayAvailability = MayAvailability;
    }

    public String getJuneAvailability() {
        return JuneAvailability;
    }

    public void setJuneAvailability(String JuneAvailability) {
        this.JuneAvailability = JuneAvailability;
    }

    public String getJulyAvailability() {
        return JulyAvailability;
    }

    public void setJulyAvailability(String JulyAvailability) {
        this.JulyAvailability = JulyAvailability;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getTId() {
        return TId;
    }

    public void setTId(int TId) {
        this.TId = TId;
    }

    public String getSkill1() {
        return skill1;
    }

    public void setSkill1(String skill1) {
        this.skill1 = skill1;
    }

    public String getSkill2() {
        return skill2;
    }

    public void setSkill2(String skill2) {
        this.skill2 = skill2;
    }

    public String getSkill3() {
        return skill3;
    }

    public void setSkill3(String skill3) {
        this.skill3 = skill3;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }

    public Trainer(int TId,String name, int age, long phoneno, String mailId, String skill1, String skill2, String skill3, int experience, String MayAvailability, String JuneAvailability, String JulyAvailability) {
        this.name = name;
        this.age = age;
        this.phoneno = phoneno;
        this.mailId = mailId;
        this.TId = TId;
        this.skill1 = skill1;
        this.skill2 = skill2;
        this.skill3 = skill3;
        this.experience = experience;
        this.MayAvailability = MayAvailability;
        this.JuneAvailability = JuneAvailability;
        this.JulyAvailability = JulyAvailability;
    }

   

    public Trainer(String name, int age, long phoneno, String mailId, String skill1, String skill2, String skill3, int experience, String MayAvailability, String JuneAvailability, String JulyAvailability) {
        this.name = name;
        this.age = age;
        this.phoneno = phoneno;
        this.mailId = mailId;
        this.skill1 = skill1;
        this.skill2 = skill2;
        this.skill3 = skill3;
        this.experience = experience;
        this.MayAvailability = MayAvailability;
        this.JuneAvailability = JuneAvailability;
        this.JulyAvailability = JulyAvailability;
    }

    
}

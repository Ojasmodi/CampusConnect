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
public class Classroom {
    private int CId;
    private int CNo;
    private int capacity;
    private int isAvailable;

    public Classroom() {
    }

    public Classroom(int CNo, int capacity) {
        this.CNo = CNo;
        this.capacity = capacity;
        this.isAvailable = 1;
    }

    public int getCId() {
        return CId;
    }

    public void setCId(int CId) {
        this.CId = CId;
    }

    public int getCNo() {
        return CNo;
    }

    public void setCNo(int CNo) {
        this.CNo = CNo;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public int isIsAvailable() {
        return isAvailable;
    }

    public void setIsAvailable(int isAvailable) {
        this.isAvailable = isAvailable;
    }

    public Classroom(int CId, int CNo, int capacity) {
        this.CId = CId;
        this.CNo = CNo;
        this.capacity = capacity;
        this.isAvailable =1;
    }

    public Classroom(int CId, int CNo, int capacity, int isAvailable) {
        this.CId = CId;
        this.CNo = CNo;
        this.capacity = capacity;
        this.isAvailable = isAvailable;
    }
    
    
}

import java.util.*;
final String [] days = {"S", "M", "T", "W", "T", "F", "S"};
final String [] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
int [] dayNos = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
color bkgd;
int [][] week = new int[12][7]; // first week of each month
int mI=0; // month index
int year;
int firstDay; // first day of the year 
final int frameCountIntv = 10;

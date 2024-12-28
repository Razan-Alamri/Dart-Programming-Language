/*
CPCS-301 Project - Group-11-
Program Idea:
Write a program that reads "X" grades from the user. The grades should be stored in an array of X
sizes. The program should compute the "Average", "Minimum", and "Maximum" grades

*/
import 'dart:math';
import 'dart:convert';
import 'dart:io';

void main() {
  // read number of greads from the user
  print('Enter Number of grades: ');
  int Number_of_grades=int.parse(stdin.readLineSync());
  // creat array with size (Number_of_grades) to save grades
  var array_grades=new List(Number_of_grades);
  // variable to calculate the total grades 
  var total=0;
  // variable to save grade
  int grade=0;
  // variable to count number of grades
  int count=1;
  // loop to save greades in array 
  for(int i=0;i<array_grades.length;i++){
    // read grade from user
    print('Grade $count: ');
    grade=int.parse(stdin.readLineSync());
    array_grades[i]=grade;
    total+=grade;
    count++;
  }
  // calculate average of grade
  var average=total/Number_of_grades;
  print('\nAvreage: $average');
  // find Maximum and Minimum grade by sorting array
  array_grades.sort();
  var maximum = array_grades.last;
  var minimum = array_grades.first;
  print('Maximum Grade: $maximum');
  print('Minimum Grade: $minimum');
}
package com.example.farejudgeapp;

public class Establishment {

        //private variables
        String Reviewerid;
        String EstabName;
        String EstabType;
        String FoodType;
        String Location;

        
        public Establishment(){

        }
    
        public Establishment(String Reviewerid, String EstabName, String EstabType, String FoodType, String Location){
            this.Reviewerid = Reviewerid;
            this.EstabName = EstabName;
            this.EstabType = EstabType;
            this.FoodType = FoodType;
            this.Location = Location;

        }

        // getting ID
        public String getReviewerid(){
            return this.Reviewerid;
        }

        // setting id
        public void setReviewerid(String Reviewerid){
            this.Reviewerid = Reviewerid;
        }

        // getting EstabName
        public String getEstabName(){
            return this.EstabName;
        }

        // setting EstabName
        public void setEstabName(String EstabName){
            this.EstabName = EstabName;
        }

        // getting EstabType
        public String getEstabType(){
            return this.EstabType;
        }

        // setting EstabType
        public void setEstabType(String EstabType){
            this.EstabType = EstabType;
        }

     // getting FoodType
        public String getFoodType(){
            return this.FoodType;
        }

        // setting FoodType
        public void setFoodType(String FoodType){
            this.FoodType = FoodType;
        }
     // getting Location
        public String getLocation(){
            return this.Location;
        }

        // setting Location
        public void setLocation(String Location){
            this.Location = Location;
        }
    }


//
//  main.swift
//  hackerrank day two
//
//  Created by Mike  Van Amburg on 11/15/19.
//  Copyright © 2019 Mike Van Amburg. All rights reserved.
//


//Objective
//In this challenge, you'll work with arithmetic operators. Check out the Tutorial tab for learning materials and an instructional video!
//
//Task
//Given the meal price (base cost of a meal), tip percent (the percentage of the meal price being added as tip), and tax percent (the percentage of the meal price being added as tax) for a meal, find and print the meal's total cost.
//
//Note: Be sure to use precise values for your calculations, or you may end up with an incorrectly rounded result!
//
//Input Format
//
//There are
//lines of numeric input:
//The first line has a double, (the cost of the meal before tax and tip).
//The second line has an integer, (the percentage of being added as tip).
//The third line has an integer, (the percentage of
//
//being added as tax).
//
//Output Format
//
//Print the total meal cost, where
//is the rounded integer result of the entire bill ( with added tax and tip).

import Foundation

// Complete the solve function below.
func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    let tip = (Double(tip_percent) / 100) * meal_cost
    let tax = (Double(tax_percent) / 100) * meal_cost
    var totalCost = meal_cost + tip + tax
    totalCost = round(totalCost)
    print(Int(totalCost))
    
}

guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

solve(meal_cost: meal_cost, tip_percent: tip_percent, tax_percent: tax_percent)



# ============================================================
# 🟦 Q3: Applying Vector and List Concepts on Employee Dataset
# ============================================================

# (i) Salary Vector and Average Salary
salary <- c(50000, 60000, 70000, 80000, 50000, 65000, 45000, 60000)
average_salary <- mean(salary)

cat("Salary Vector:", salary, "\n")
cat("Average Salary:", average_salary, "\n\n")

# (ii) Age Vector and Find Minimum and Maximum Age
ages <- c(34, 29, 40, 30, 35, 27, 41, 30)
min_age <- min(ages)
max_age <- max(ages)
cat("Age Vector:", ages, "\n")
cat("Minimum Age:", min_age, "\n")
cat("Maximum Age:", max_age, "\n\n")

# (iii) List for a Single Employee
employee <- list(Name = "Z", Department = "Finance", Age = 40, Salary = 70000)
cat("Employee Details:\n")
print(employee)
cat("\n")

# (iv) Lists vs Vectors Example:
vec <- c(10, 20, 30)
lst <- list(Name = "John", Age = 28, Department = "HR", Salary = 50000)
cat("Vector Example:\n")
print(vec)
cat("\nList Example:\n")
print(lst)
cat("\n")

# (v) Dataset Creation and Statistical Analysis
Emp_ID <- c("E1","E2","E3","E4","E5","E6","E7","E8")
Name <- c("X","Y","Z","X","Y","Z","X","Y")
Age <- c(34, 29, 40, 30, 35, 27, 41, 30)
Dept <- c("HR","IT","Finance","Marketing","HR","IT","Finance","Marketing")
Salary <- c(50000, 60000, 70000, 80000, 50000, 65000, 45000, 60000)
Gender <- c("Male","Female","Male","Female","Male","Female","Male","Female")
Experience <- c(5,3,10,4,2,7,9,6)
employees <- data.frame(Emp_ID, Name, Age, Dept, Salary, Gender, Experience)
mean_salary <- mean(employees$Salary)
sd_salary <- sd(employees$Salary)
correlation <- cor(employees$Age, employees$Salary)
cat("Mean Salary:", mean_salary, "\n")
cat("Standard Deviation of Salary:", sd_salary, "\n")
cat("Correlation between Age and Salary:", correlation, "\n\n")

# Optional visualization: Scatter plot (Age vs Salary)
plot(employees$Age, employees$Salary,
     main = "Correlation between Age and Salary",
     xlab = "Age", ylab = "Salary",
     pch = 19, col = "blue")
abline(lm(Salary ~ Age, data = employees), col = "red", lwd = 2)

# ============================================================
# 🟩 Q4: Visualization using Built-in Dataset (mtcars)
# ============================================================

# Load dataset
data(mtcars)

# (a) Scatter Plot: Horsepower vs Miles per Gallon
plot(mtcars$hp, mtcars$mpg,
     main = "Relationship Between Horsepower and Miles per Gallon",
     xlab = "Horsepower (hp)",
     ylab = "Miles per Gallon (mpg)",
     pch = 19, col = "blue")
abline(lm(mpg ~ hp, data = mtcars), col = "red", lwd = 2)

# (b) Boxplot: MPG across Cylinder Counts
boxplot(mpg ~ cyl, data = mtcars,
        main = "Comparison of MPG Across Cylinder Counts",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon (mpg)",
        col = c("lightblue", "lightgreen", "lightpink"))

# (c) Histogram: Car Weights
hist(mtcars$wt,
     breaks = 8,
     main = "Distribution of Car Weights",
     xlab = "Weight (1000 lbs)",
     ylab = "Frequency",
     col = "orange",
     border = "black")



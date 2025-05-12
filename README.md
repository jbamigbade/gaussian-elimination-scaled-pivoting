# Gaussian Elimination with Scaled Partial Pivoting (Octave)

This project demonstrates the solution of systems of linear equations using **Gaussian elimination with scaled partial pivoting** implemented in **GNU Octave**. The solution process includes forward elimination, back substitution, and a comparison of numerical sensitivity when one matrix entry is perturbed.

---

## 📁 Files Included

| File         | Description                                                                 |
|--------------|-----------------------------------------------------------------------------|
| `Gauss.m`    | Implements Gaussian elimination with scaled partial pivoting.               |
| `Solve.m`    | Solves the upper triangular system using back substitution.                 |
| `TestSP.m`   | Main script that initializes the system, performs solving, and logs output. |
| `output.txt` | Automatically generated results including original and modified solutions.  |

---

## 🧠 What This Project Demonstrates

- **Scaled Partial Pivoting**: Reduces numerical instability during row reduction.
- **Sensitivity to Input**: Shows how a tiny change in the matrix can lead to significant changes in the solution — a hallmark of ill-conditioned systems.
- **Scripted Output**: All results are saved to `output.txt` for documentation or grading.

---

## ▶️ How to Run This Project Locally

If you downloaded this repository or cloned it from GitHub, follow these steps to run the Octave code:

### 1. Prerequisites
- Install [GNU Octave](https://www.gnu.org/software/octave/)

### 2. Download the Project
- Click the green **Code** button on this repo
- Select **Download ZIP**
- Extract the ZIP to a known folder, e.g.:


### 3. Open Octave and Navigate to the Folder
```octave
cd 'C:/OctaveProjects/gaussian-elimination'

4. Run the Main Script
TestSP
          This will:
          
          Execute Gaussian elimination with scaled partial pivoting.
          
          Print solutions for both the original and modified systems.
          
          Save results to output.txt in the same folder.

5. View the Output
      type output.txt

## 🧪 Sample Output

Solution x for the original system:
3.4606
1.5610
-2.9342
-0.4301

Solution x for the modified system:
6.7831
3.5914
-6.4451
-1.5179

Difference in solutions due to numerical error:
3.3225
2.0305
3.5109
1.0879

This repository is released for educational and academic use. You may adapt or extend the code with proper attribution. No commercial use permitted without permission.

🙋‍♂️ Author
Bamigbade Oluwaseyi
Project submitted for Numerical Analysis coursework


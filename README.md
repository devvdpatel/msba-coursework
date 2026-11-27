# MSBA Coursework, CSU East Bay

Homework, labs, case studies and projects from my M.S. in Business Analytics at California State University, East Bay (Aug 2024 to May 2026). Each folder holds what I submitted for that assignment: notebooks, code, write-ups, workbooks or slides.

Cases marked **(group)** were team submissions.

## Contents

- **Fall 2024:** [BAN-601](#ban-601) · [BAN-602](#ban-602) · [BAN-630](#ban-630)
- **Spring 2025:** [BAN-610](#ban-610)
- **Fall 2025:** [BAN-612](#ban-612) · [BAN-622](#ban-622) · [BAN-632](#ban-632) · [MGMT-662](#mgmt-662)
- **Spring 2026:** [MGMT-616](#mgmt-616)

## Fall 2024

<a id="ban-601"></a>
### BAN-601 · Tech Fundamentals for Analytics

| Assignment | What it covers | Tools |
|---|---|---|
| [Homework 1](Fall-2024/BAN-601%20-%20Tech%20Fundamental%20for%20Analytics/Homework-1) | Python basics: unique counts with sets, list concatenation and insertion, pandas column/row selection with left and right joins, set union, `dict.fromkeys`, a function that checks whether a string's last three characters repeat earlier, and a 7×8×9 NumPy array (mean along an axis, scaling). | Python, pandas, NumPy |
| [Homework 2](Fall-2024/BAN-601%20-%20Tech%20Fundamental%20for%20Analytics/Homework-2) | Logic problems on lists and dicts: duplicate indexes scanned right to left, the third-largest value, the top three distinct values without built-in sorting, summing only tuple elements in a mixed list, retrying random indexes with try/except, merging two dicts by multiplying shared keys, and pricing cargo stored at (x, y, height) tuple locations. | Python |

<a id="ban-602"></a>
### BAN-602 · Quantitative Fundamentals

| Assignment | What it covers | Tools |
|---|---|---|
| [Module 1 In Class Assignment](Fall-2024/BAN-602%20-%20Quantitative%20Fundamentals/Module-1-In-Class-Assignment) | Set up the Python environment and took a first look at the Advertising dataset (TV, radio and newspaper spend vs. sales) with pandas and a TV-vs-sales scatterplot. | Python, pandas, matplotlib |
| [Module 2 In Class Assignment](Fall-2024/BAN-602%20-%20Quantitative%20Fundamentals/Module-2-In-Class-Assignment) | Compared regression models for sales with and without a TV × radio interaction, plotted a 3-D fitted surface, and used train/test MSE to pick the better model. | statsmodels, scikit-learn |
| [Module 3 In Class Assignment](Fall-2024/BAN-602%20-%20Quantitative%20Fundamentals/Module-3-In-Class-Assignment) | Simple linear regression of sales on TV spend (R² = 0.61): the least-squares objective, coefficient estimates, standard errors and significance tests. | statsmodels |
| [Module 4 In Class Assignment](Fall-2024/BAN-602%20-%20Quantitative%20Fundamentals/Module-4-In-Class-Assignment) | Multiple regression on Advertising (R² = 0.90; newspaper not significant), then the Credit dataset: dummy variables for qualitative predictors (own, region, married, student), interaction terms and polynomial terms. | statsmodels |
| [Module 5 In Class Assignment](Fall-2024/BAN-602%20-%20Quantitative%20Fundamentals/Module-5-In-Class-Assignment) | Classification on the ISLP `Default` data (10,000 credit card customers): logistic regression for default from balance, income and student status, confusion matrices, true/false positive rates and AUC comparison. | statsmodels, scikit-learn |
| [Module 6 In Class Assignment](Fall-2024/BAN-602%20-%20Quantitative%20Fundamentals/Module-6-In-Class-Assignment) | Resampling: validation sets, leave-one-out and k-fold cross-validation, and bootstrapped returns for a trading rule on the `Smarket` S&P 500 data. | statsmodels, NumPy |
| [Module 7 In Class Assignment](Fall-2024/BAN-602%20-%20Quantitative%20Fundamentals/Module-7-In-Class-Assignment) | Model selection: Cp, AIC, BIC and adjusted R², plus hand-written forward selection for both linear and logistic models evaluated on validation splits. | statsmodels |
| [Case Assignment 1](Fall-2024/BAN-602%20-%20Quantitative%20Fundamentals/Case-Assignment-1) | **(group)** Advertising case: EDA and correlation heatmap, then fit every combination of TV, radio, newspaper and each pairwise interaction and ranked them by test MSE. Slides show TV is the strongest driver of sales and newspaper the weakest. | Python, statsmodels, seaborn |
| [Case Assignment 2](Fall-2024/BAN-602%20-%20Quantitative%20Fundamentals/Case-Assignment-2) | **(group)** College football game-day data (magazine sales, opponent rank, ticket sales, homecoming, weather): predicted kickoff temperature with linear and polynomial regression plus residual checks, and encoded game-day weather for classification. | scikit-learn |
| [Case Assignment 3](Fall-2024/BAN-602%20-%20Quantitative%20Fundamentals/Case-Assignment-3) | **(group)** `Smarket` trading case: functions for buy-and-hold and daily returns, linear regression for % return and logistic regression for up/down days (trained pre-2005, tested on 2005), then backtested threshold strategies. Best result: invest whenever the linear model predicts any positive return. | statsmodels, scikit-learn |

<a id="ban-630"></a>
### BAN-630 · Optimization for Analytics

| Assignment | What it covers | Tools |
|---|---|---|
| [In Class Assignment 1](Fall-2024/BAN-630%20-%20Optimization%20for%20Analytics/In-Class-Assignment-1) | Building decision models in code: a T-shirt order profit model (fixed + variable cost, leftovers sold at a discount), a six-year cabinet material and labor cost projection, and the break-even response rate for a 100,000-piece catalog mailing. | Python, SciPy (fsolve) |
| [In Class Assignment 2](Fall-2024/BAN-630%20-%20Optimization%20for%20Analytics/In-Class-Assignment-2) | First linear programs: Chandler Oil crude blending to maximize revenue under quality limits ($975K optimum), and a multi-period investment plan maximizing cash at the start of year 5, with dual values and sensitivity analysis. | Gurobi |
| [In Class Assignment 3](Fall-2024/BAN-630%20-%20Optimization%20for%20Analytics/In-Class-Assignment-3) | Integer programming: Tatham capital budgeting (choose from 7 projects to maximize NPV within budget), Great Threads product mix with fixed equipment costs, and Western Airlines hub location (fewest hubs so every city is within 1,000 miles). | Gurobi |
| [In Class Assignment 4](Fall-2024/BAN-630%20-%20Optimization%20for%20Analytics/In-Class-Assignment-4) | Nonlinear optimization: Madison profit-maximizing price under linear demand, Lafferty warehouse location minimizing total annual shipping distance, and a Perlman & Brothers minimum-variance portfolio with at least a 12% expected return. | Gurobi (quadratic) |
| [In Class Assignment 5](Fall-2024/BAN-630%20-%20Optimization%20for%20Analytics/In-Class-Assignment-5) | Monte Carlo newsvendor model for Walton Bookstore's calendar order: tests whether ordering the mean demand of 200 is right, compares deterministic and simulated profit, and searches for the profit-maximizing order quantity. | NumPy, matplotlib |
| [In Class Assignment 6](Fall-2024/BAN-630%20-%20Optimization%20for%20Analytics/In-Class-Assignment-6) | Simulation under uncertainty: Miller Construction's bid on a government contract with triangular cost distributions and random competitor bids (best bid about $14,500, 42.5% win chance), and a five-year NPV simulation for a new car at GF Auto with downside percentiles. | NumPy, SciPy |
| [Case Assignment 1](Fall-2024/BAN-630%20-%20Optimization%20for%20Analytics/Case-Assignment-1) | **(group)** Armco pension fund LP: choose starting cash and purchases of three bonds to cover 15 years of payments with 4% reinvestment, read shadow prices for each year, and measure the extra ~$25K needed when reinvestment rates fall. | Gurobi |
| [Case Assignment 2](Fall-2024/BAN-630%20-%20Optimization%20for%20Analytics/Case-Assignment-2) | **(group)** Giant Motor Company capacity plan as a mixed-integer program: whether to retool the Lyra and/or Libra plants into flexible multi-model plants, with plant open/close binaries and demand spilling up to higher-tier cars. Recommends retooling the Libra plant, then tests closing the Hydra plant and raising Libra demand to 2M. | Gurobi (MILP) |
| [Case Assignment 3](Fall-2024/BAN-630%20-%20Optimization%20for%20Analytics/Case-Assignment-3) | **(group)** Hedging a $10M position in a leveraged gold-mining stock: stock alone returns 2.0% with an 18.3% standard deviation, a put option cuts risk to 15.6%, and a quadratic program finds the minimum-variance mix of stock and three puts, plus a check of a new option. | Gurobi (QP) |
| [Case Assignment 4](Fall-2024/BAN-630%20-%20Optimization%20for%20Analytics/Case-Assignment-4) | **(group)** Extends the Giant Motor model with random demand at increasing standard deviations to see which plants open or close and how profit responds. Finding: 5–15% variability is manageable; beyond 15% the plan needs more flexible capacity. | Gurobi, simulation |

## Spring 2025

<a id="ban-610"></a>
### BAN-610 · Database Management & Applications

| Assignment | What it covers | Tools |
|---|---|---|
| [Assignment 1](Spring-2025/BAN-610%20-%20Database%20Mgmt%20%26%20Applications/Assignment-1) | Database theory problem set: keeping a hot object in memory with undo/redo logs and checkpoints to cut disk I/O, identifying normal forms and normalizing tables to 3NF with primary and foreign keys, functional dependencies, ER design, and recovering from a crash by deciding which transactions to redo, undo or ignore. | Written answers |
| [Assignment 2](Spring-2025/BAN-610%20-%20Database%20Mgmt%20%26%20Applications/Assignment-2) | SQL on a frequent-flyer database and a university book-loan database: filters and `LIKE`, per-operator counts and average miles, joins for trips over $300, nested subqueries for everyone who flew to SFO, a self-join to find round-trip routes, CTEs for the most-visited destination and most-borrowed author (ties included), and loan charges at $0.10 per book per day. | SQL |

## Fall 2025

<a id="ban-612"></a>
### BAN-612 · Data Analytics (course project: predicting income from census data)

| Assignment | What it covers | Tools |
|---|---|---|
| [Project Proposal](Fall-2025/BAN-612%20-%20Data%20Analytics/Project-Proposal) | Proposal to predict whether an adult earns more than $50K from the UCI Adult (1994 Census) data: cleaning plan, one scikit-learn pipeline, Logistic Regression vs. Random Forest vs. Gradient Boosting under 5-fold stratified CV with ROC-AUC, planned EDA and ethical limits. | Written proposal |
| [Preliminary Report and Code](Fall-2025/BAN-612%20-%20Data%20Analytics/Preliminary-Report-and-Code) | EDA notebook: removes `?` values, plots the high-income rate by category with sample sizes, and builds target-rate heatmaps such as race × sex and age × hours worked. | pandas, seaborn |
| [Project Presentation Slides](Fall-2025/BAN-612%20-%20Data%20Analytics/finalppt.pptx) | Presentation of the findings: Bachelor's holders clear $50K at about 40% vs. 17% for high-school graduates, income gaps across race × sex, and a peak of about 57% for ages 46–55 working 51–60 hours a week. | PowerPoint |
| [Project Final Report and Code](Fall-2025/BAN-612%20-%20Data%20Analytics/Project-Final-Report-and-Code) | Final notebook and report on 32,561 records: preprocessing pipeline (imputation, scaling, one-hot encoding), model comparison where Gradient Boosting wins with a mean ROC-AUC of about 0.92, top-10 feature importances (education, hours, age, marital status, occupation) and sensitivity checks. | scikit-learn |

<a id="ban-622"></a>
### BAN-622 · Data Engineering & Business Intelligence

| Assignment | What it covers | Tools |
|---|---|---|
| [Lab 1: Dimensional Modeling](Fall-2025/BAN-622%20-%20Data%20Engineering%20%26%20BI/Lab-1_Dimensional-Modeling) | Star-schema design for an online retailer's e-wallet (cancellation, gift-card and "sorry" credits) to track daily balance, expiring credit and % used/expired/left, plus a second schema for a computer distributor facing falling sales and margins. | Dimensional modeling |
| [Lab 2: Tableau Basic](Fall-2025/BAN-622%20-%20Data%20Engineering%20%26%20BI/Lab-2_Tableau-Basic) | Tableau fundamentals: connecting Excel sources, sales and profit bar charts and cross tables, filters, computed and manual sorts, a linked dashboard, editing a data source (hurricane data), groups and hierarchies. | Tableau |
| [Lab 3: Tableau Advanced](Fall-2025/BAN-622%20-%20Data%20Engineering%20%26%20BI/Lab-3_Tableau-Advanced) | Advanced Tableau on Adventure Works: dual and combined-axis charts, scatter plots, symbol maps, totals, highlight tables and heat maps, calculated profit-margin fields, string and date calcs, running totals, unions, trend lines, forecasting and clustering. | Tableau |
| [Assignment 1: Dimensional Modeling](Fall-2025/BAN-622%20-%20Data%20Engineering%20%26%20BI/Assignment-1_Dimensional-Modeling) | Data warehouse design for a 50-location hospital network: billing by hospital, department and doctor, patient payment methods, prepaid medical-account credit (daily balance, % used/left) and insurance claim turnaround. Eight dimensions with a billing fact table and an account-credit fact table. | Dimensional modeling |
| [Assignment 2: Tableau Analysis](Fall-2025/BAN-622%20-%20Data%20Engineering%20%26%20BI/Assignment-2_Tableau-Analysis) | Tableau analysis of Adventure Works reseller sales: cross tables with subtotals and percent-of-total by pane, discrete vs. continuous dates, dual-axis charts, annual sales vs. employee count (R² = 0.918), profit-margin calculated fields with a profitable/unprofitable flag, forecasting and clustering. | Tableau |
| [Assignment 4: Data Integration](Fall-2025/BAN-622%20-%20Data%20Engineering%20%26%20BI/Assignment-4_Data-Integration) | Talend jobs joining order lines to products: filter by price and sort by name, an inner join plus a list of products never ordered, and a left join with aggregation. | Talend |

<a id="ban-632"></a>
### BAN-632 · Big Data Technologies & Applications

| Assignment | What it covers | Tools |
|---|---|---|
| [Assignment 1](Fall-2025/BAN-632%20-%20Big%20Data%20Tech.%20%26%20Apps/Assignment-1) | On the CSUEB Hadoop cluster: rewrote the book's Java max-temperature MapReduce job as a Python mapper/reducer for Hadoop Streaming, ran the HDFS `FileSystemDoubleCat` and `MapFileWriteDemo` examples, and ran a PySpark word count. | Hadoop, HDFS, Python, Spark |
| [Assignment 2](Fall-2025/BAN-632%20-%20Big%20Data%20Tech.%20%26%20Apps/Assignment-2) | An MRJob program that counts −10 °C readings in the 1930 NCDC weather data, Pig schema and `LOAD`/`DESCRIBE`/`DUMP` examples, a custom Java Pig load function for fixed-width fields, and Hive table examples. | MRJob, Pig, Java UDF, Hive |
| [Course Project](Fall-2025/BAN-632%20-%20Big%20Data%20Tech.%20%26%20Apps/Course-Project) | Three-stage pipeline over NCDC weather records for 1930–1939: a Python MRJob job parses raw fixed-width records into about 130K year/temperature rows (`merged_output.txt`), Pig computes each year's high and low, and Hive computes each year's average. | MRJob, Pig, Hive |

<a id="mgmt-662"></a>
### MGMT-662 · Operations Analytics

| Assignment | What it covers | Tools |
|---|---|---|
| [Assignment 1](Fall-2025/MGMT-662%20-%20Operations%20Analytics/Assignment-1) | Excel Solver LPs: least-cost 2-lb trail-mix blend that meets vitamin, mineral, protein and calorie minimums (with sensitivity report), a $100K bond allocation under short-term, risk and tax-free rules, and a network-flow model for a consultant's Dallas–San Diego flights: 4 round trips for $2,025, saving $975. | Excel Solver |
| [Assignment 2](Fall-2025/MGMT-662%20-%20Operations%20Analytics/Assignment-2) | Forecasting a retail store's monthly cost of goods sold: a multiplicative seasonal model and Holt-Winters multiplicative smoothing with Solver-tuned constants (α = 0.27, β = 0.09, γ = 1), six-month forecasts and fit charts, plus a short reflection on using AI to learn vs. as a shortcut. | Excel Solver |

## Spring 2026

<a id="mgmt-616"></a>
### MGMT-616 · People Analytics

| Assignment | What it covers | Tools |
|---|---|---|
| [Activity 1 Hypotheses and Collecting Data](Spring-2026/MGMT-616%20-%20People%20Analytics/Activity-1-Hypotheses-and-Collecting-Data) | Four if-then hypotheses for an on-campus Einstein Bros. Bagels (training hours → performance, job satisfaction → turnover intention, hours worked → stress, supervisor support → satisfaction), each with an IV and DV, and a Google Forms employee survey to measure them. | Survey design |
| [Activity 2 Introduction to R](Spring-2026/MGMT-616%20-%20People%20Analytics/Activity-2-Introduction-to-R) | First Quarto/R notebook: arithmetic and vectors, installing packages, loading the salespeople dataset, and importing my own survey responses (`googlesurvey_csv.csv`). | R, Quarto |
| [Activity 3 Manipulating Data in R](Spring-2026/MGMT-616%20-%20People%20Analytics/Activity-3-Manipulating-Data-in-R) | dplyr cleaning workflow: join training and employee files, keep employees with more than 10 scans/minute and knowledge ≥ 9, select columns, write the result to CSV, and label performance tiers with `case_when`. | R, tidyverse |
| [Activity 4 Descriptive Statistics](Spring-2026/MGMT-616%20-%20People%20Analytics/Activity-4-Descriptive-Statistics) | Evaluating two sales training programs: join HR/sales and training data, keep employees with 31+ days' tenure, count by program and sex, and compare pre/post revenue and customer-service means. Revenue rose under both programs; service scores barely moved. | R, tidyverse |
| [Activity 5 T Tests and Intro to Regression](Spring-2026/MGMT-616%20-%20People%20Analytics/Activity-5-T-Tests-and-Intro-to-Regression) | Same training data: independent t-tests between the two programs, paired pre/post t-tests within each, and simple and multiple regression with standardized betas. Program choice alone explains under 1% of post-training service ratings. | R |
| [Activity 6 Pay Equity](Spring-2026/MGMT-616%20-%20People%20Analytics/Activity-6-Pay-Equity) | Pay equity check for level-1 software engineers: regression of pay on sex, then adding education and then performance score to see how much of the gap remains. | R |
| [Group Project Final Report](Spring-2026/MGMT-616%20-%20People%20Analytics/Group-Project-Final-Report) | Report on the 2023 Federal Employee Viewpoint Survey for the U.S. Department of Transportation (20,624 responses): what drives the Performance Confidence Index. Intrinsic work experience (β = 0.52) and performance feedback (β = 0.51) both matter; supervisors and non-supervisors barely differ (d = 0.04); work-unit innovation lifts R² from about 0 to 0.43. Ends with three recommendations. | R, Quarto |

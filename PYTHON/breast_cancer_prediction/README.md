# 🩺 Breast Cancer Dataset Analysis
### 📌 Introduction
Breast cancer is one of the leading causes of cancer-related deaths globally, particularly affecting women. Early diagnosis and personalized treatment decisions are critical for improving patient outcomes. This project focuses on analyzing a breast cancer dataset to identify patterns in tumor stage, histology types, protein expression levels, and treatment options like surgery.

The dataset used contains 341 patient records, with features such as protein biomarkers, tumor stages, histology types, hormone receptor statuses, surgery dates, and patient outcomes.

### 🎯 Objective
The objectives of this analysis are:

To clean and preprocess the breast cancer dataset for effective analysis.

To explore the relationship between tumor stages, histology types, and protein expression.

To analyze surgical treatment options and how they correlate with tumor stages.

To investigate gender-based patterns and survival outcomes.

To derive insights that could be useful for early diagnosis and better treatment decisions.

### 🔍 Key Insights
Tumor Stage Distribution: Stage II tumors were the most common, followed by Stage III and Stage I.

Histology Type: Infiltrating Ductal Carcinoma was the most prevalent histological type.

Gender Bias: The vast majority of patients were female, with very few male patients recorded.

Surgery Trends: ‘Other’ and ‘Modified Radical Mastectomy’ were the most performed surgeries, especially for advanced stages.

Correlation of Proteins: Protein2 showed a moderate positive correlation with Protein1, while Protein3 had a negative correlation with Protein2.

Patient Status: Some patients with late-stage tumors were still marked as “Alive,” suggesting potential for successful intervention.

Time Between Surgery and Last Visit: A new feature was engineered to measure this gap in weeks, useful for understanding follow-up trends.

### 🤖 Model Insight
Three models were evaluated: Logistic Regression, Support Vector Classifier (SVC), and Random Forest Classifier. After performance comparison and hyperparameter tuning using GridSearchCV, Random Forest Classifier delivered the best results.

**🔍 Models Evaluated:**
Model	Training Accuracy	Test Accuracy
Logistic Regression	80.2%	81.3%
SVC	80.2%	81.3%
Random Forest (tuned)	100%	81.3%

Despite a perfect training accuracy (which may indicate overfitting), the Random Forest model generalized just as well as others on the test set. This, coupled with its interpretability via feature importance, made it the preferred model.

**📌 Hyperparameter Tuning:**
Best Parameters:

n_estimators: 100

max_depth: None

min_samples_split: 2

min_samples_leaf: 20

**📈 Model Evaluation Metrics:**
Metric	Value
Accuracy	81.3%
Precision	0.8125
Recall	1.0
F1-Score	0.90

High recall (1.0) indicates that the model correctly identified all patients who didn’t survive (positives).

Precision (0.81) shows that while the model made some false positives, most predicted positives were correct.

F1-Score (0.90) shows a good balance between precision and recall.

**🔍 Feature Importance:**
Based on the Random Forest feature importances, the top influencing features in predicting patient survival status were:

Tumor Stage

Age at Diagnosis

Histology Type

Surgery Type

ER and PR Status

These align with clinical expectations—higher tumor stages and older age generally correlate with worse outcomes.

#### 🔬 Model Testing with New Data:
The model was also tested with new patient inputs (e.g., age, tumor stage, surgery type, etc.), and consistently predicted survival (label 1). This suggests the model is currently skewed toward predicting patients as alive, supported by the low recall for the negative class (0.0). Balancing the dataset or tuning thresholds may help improve this in future iterations.

### 🧠 Conclusion
This project involved building a classification model to predict breast cancer patient survival status based on various clinical features. The Random Forest model, after hyperparameter tuning, performed the best, achieving an accuracy of 81.3% and perfect recall for the positive class. Key insights included the significance of Tumor Stage, Age at Diagnosis, and Histology Type in influencing outcomes.


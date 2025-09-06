# Water Quality Classification via Cost-Efficient Machine Learning: A Case Study in Nuevo León

This repository contains supplementary materials (code, data, results) for the article published in [LNAI Springer](https://link.springer.com/series/1244). The project, referred to as "Water Quality ML in Nuevo León" in this repository, provides scripts and data to reproduce the machine learning analysis for water quality classification in Nuevo León.

## Abstract 

Accurate water-quality assessment is vital, but laboratory costs limit monitoring in many regions. We test whether a small, low-cost indicator panel can classify Water Quality Index (WQI) categories in Nuevo León, Mexico. Using 1,302 REMANECA samples, we computed WQI with a weighted multiplicative model and trained five classifiers (Random Forest, SVM, Decision Tree, KNN, Naive Bayes) on physicochemical features. Cross-validation ranked Random Forest (RF) best with 11 indicators (accuracy 0.921 ± 0.023; weighted F1 0.912 ± 0.028; macro precision 0.926 ± 0.037; macro recall 0.785 ± 0.073). Feature selection and importances emphasized total hardness, coliforms, nutrients (PO4, NO3-, NH3), and pH. A cost-aware five-test panel (hardness, PO4, pH, NH3, SST) retained strong performance (RF accuracy 0.857 ± 0.026; weighted F1 0.829 ± 0.030) with reduced minority-class sensitivity (macro recall 0.615 ± 0.059). Errors concentrated between adjacent categories; detection of heavily contaminated water remained stable (recall 98% to 97%) and the majority class stayed high (99% to 98%), while excellent and slightly contaminated degraded. These results show that reliable WQI classification is achievable with a compact, low-cost indicator set. A tiered strategy—screen with the five-test panel and confirm with the full suite—can expand coverage under fixed budgets while preserving identification of severe contamination.

## Usage
1. Clone the repository: `git clone https://github.com/kaledcorona/water-quality-classification-paper.git`
2. Install Docker and Docker Compose ([Docker Engine](https://docs.docker.com/engine/install/)).
3. Run `docker compose up --build`.
4. Open JupyterLab at `http://localhost:8888`.
5. Run `code/notebooks/Water_Quality_ML_Nuevo_Leon.ipynb` to reproduce results.




## Citations

Coming soon

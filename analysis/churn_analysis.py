import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# 그래프 스타일
sns.set(style="whitegrid")

# SQL 결과 CSV 불러오기
df_country = pd.read_csv("/Users/yewone/Desktop/data-analysis/sql/results/churn_by_country.csv")
df_gender = pd.read_csv("/Users/yewone/Desktop/data-analysis/sql/results/churn_by_gender.csv")
df_age  = pd.read_csv("/Users/yewone/Desktop/data-analysis/sql/results/churn_by_age.csv")



plt.figure(figsize=(8, 5))
sns.barplot(data=df_country, x="country", y="churn_rate")
plt.title("Churn Rate by Country")
plt.ylabel("Churn Rate (%)")
plt.xlabel("Country")
plt.show()


plt.figure(figsize=(5, 4))
sns.barplot(data=df_gender, x="gender", y="churn_rate")
plt.title("Churn Rate by Gender")
plt.ylabel("Churn Rate (%)")
plt.xlabel("Gender")
plt.show()


plt.figure(figsize=(8, 5))
sns.barplot(data=df_country, x="country", y="churn_rate")
plt.title("Churn Rate by Country")
plt.ylabel("Churn Rate (%)")
plt.xlabel("Country")
plt.savefig("../results/churn_by_country.png", dpi=300)
plt.close()




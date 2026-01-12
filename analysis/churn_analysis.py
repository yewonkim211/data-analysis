import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

sns.set(style="whitegrid")

# CSV 불러오기
df_country = pd.read_csv(
    "/Users/yewone/Desktop/data-analysis/sql/results/churn_by_country.csv",
    header=None,
    names=["country", "churn_rate"]
)

df_gender = pd.read_csv(
    "/Users/yewone/Desktop/data-analysis/sql/results/churn_by_gender.csv",
    header=None,
    names=["gender", "churn_rate"]
)

df_age = pd.read_csv(
    "/Users/yewone/Desktop/data-analysis/sql/results/churn_by_age.csv",
    header=None,
    names=["age_group", "churn_rate"]
)


# 컬럼명 정리(공백 제거 + 소문자 통일)
for df in (df_country, df_gender, df_age):
    df.columns = df.columns.str.strip().str.lower()

# 컬럼 존재 확인(디버깅용)
print("country cols:", df_country.columns.tolist())
print("gender cols:", df_gender.columns.tolist())
print("age cols:", df_age.columns.tolist())

# 만약 churn_rate가 없고 'churnrate'나 'rate' 등으로 되어있으면 여기서 맞춰주기
# (필요하면 아래를 직접 수정)
# df_country = df_country.rename(columns={"churnrate": "churn_rate"})
# df_gender  = df_gender.rename(columns={"churnrate": "churn_rate"})

# ---- Country ----
plt.figure(figsize=(8, 5))
sns.barplot(data=df_country, x="country", y="churn_rate")
plt.title("Churn Rate by Country")
plt.ylabel("Churn Rate (%)")
plt.xlabel("Country")
plt.tight_layout()
plt.show()

# ---- Gender ----
plt.figure(figsize=(5, 4))
sns.barplot(data=df_gender, x="gender", y="churn_rate")
plt.title("Churn Rate by Gender")
plt.ylabel("Churn Rate (%)")
plt.xlabel("Gender")
plt.tight_layout()
plt.show()

# ---- Save ----
plt.figure(figsize=(8, 5))
sns.barplot(data=df_country, x="country", y="churn_rate")
plt.title("Churn Rate by Country")
plt.ylabel("Churn Rate (%)")
plt.xlabel("Country")
plt.tight_layout()
plt.savefig("../results/churn_by_country.png", dpi=300)
plt.close()

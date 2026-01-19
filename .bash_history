gcloud services enable run.googleapis.com cloudbuild.googleapis.com sqladmin.googleapis.com
unzip filename.zip
ls
cd municipal-rent-valuation-BRANDED
gcloud run deploy rental-system --source . --region me-central1 --allow-unauthenticated
gcloud projects add-iam-policy-binding direct-volt-484721-p7     --member="serviceAccount:685070812667-compute@developer.gserviceaccount.com"     --role="roles/storage.admin"
gcloud projects add-iam-policy-binding direct-volt-484721-p7     --member="serviceAccount:685070812667-compute@developer.gserviceaccount.com"     --role="roles/iam.serviceAccountUser"
gcloud run deploy rental-system --source . --region me-central1 --allow-unauthenticated
cat <<EOF > requirements.txt
streamlit
pandas
sqlalchemy
folium
streamlit-folium
jinja2
EOF

cat <<EOF > Procfile
web: streamlit run app.py --server.port=\$PORT --server.address=0.0.0.0
EOF

gcloud run deploy rental-system --source . --region me-central1 --allow-unauthenticated
cat <<EOF > Dockerfile
FROM python:3.9-slim
WORKDIR /app
RUN apt-get update && apt-get install -y     build-essential     curl     software-properties-common     && rm -rf /var/lib/apt/lists/*
COPY . .
RUN pip install --no-cache-dir streamlit pandas sqlalchemy folium streamlit-folium jinja2
EXPOSE 8080
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]
EOF

cat <<EOF > requirements.txt
streamlit
pandas
sqlalchemy
folium
streamlit-folium
jinja2
EOF

gcloud run deploy rental-system --source . --region me-central1 --allow-unauthenticated
ls
gcloud builds submit --tag gcr.io/$GOOGLE_CLOUD_PROJECT/rental-system
gcloud projects add-iam-policy-binding direct-volt-484721-p7     --member="serviceAccount:685070812667-compute@developer.gserviceaccount.com"     --role="roles/logging.logWriter"
cat <<EOF > Dockerfile
FROM python:3.9-slim
WORKDIR /app
# تثبيت الأساسيات فقط
RUN apt-get update && apt-get install -y     build-essential     && rm -rf /var/lib/apt/lists/*
COPY . .
RUN pip install --no-cache-dir streamlit pandas sqlalchemy folium streamlit-folium jinja2
EXPOSE 8080
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]
EOF

gcloud builds submit --tag gcr.io/$GOOGLE_CLOUD_PROJECT/rental-system
gcloud projects add-iam-policy-binding direct-volt-484721-p7     --member="serviceAccount:685070812667-compute@developer.gserviceaccount.com"     --role="roles/artifactregistry.admin"
gcloud run deploy rental-system --source . --region me-central1 --allow-unauthenticated
gcloud run services add-iam-policy-binding rental-system     --region=me-central1     --member="allUsers"     --role="roles/run.invoker"
gcloud resource-manager org-policies delete iam.allowedPolicyMemberDomains --project=direct-volt-484721-p7
gcloud run services add-iam-policy-binding rental-system     --region=me-central1     --member="allUsers"     --role="roles/run.invoker"
streamlit run app.py --server.port 8080 --server.address 0.0.0.0
gcloud run services add-iam-policy-binding rental-system     --region=me-central1     --member="user:info@mdaghistani.com"     --role="roles/run.invoker"
gcloud run services add-iam-policy-binding rental-system     --region=me-central1     --member="user:info@mdaghistani.com"     --role="roles/run.invoker"
gcloud resource-manager org-policies disable-enforce iam.allowedPolicyMemberDomains --project=direct-volt-484721-p7
gcloud run services add-iam-policy-binding rental-system     --region=me-central1     --member="allUsers"     --role="roles/run.invoker"
gcloud resource-manager org-policies disable-enforce iam.allowedPolicyMemberDomains --project=direct-volt-484721-p7
gcloud run services add-iam-policy-binding rental-system     --region=me-central1     --member="allUsers"     --role="roles/run.invoker"
gcloud resource-manager org-policies disable-enforce iam.allowedPolicyMemberDomains --project=direct-volt-484721-p7
gcloud run services add-iam-policy-binding rental-system     --region=me-central1     --member="allUsers"     --role="roles/run.invoker"
cat <<EOF > requirements.txt
streamlit
pandas
sqlalchemy
folium
streamlit-folium
jinja2
fpdf
EOF

cat <<EOF > Dockerfile
FROM python:3.9-slim
WORKDIR /app
RUN apt-get update && apt-get install -y build-essential && rm -rf /var/lib/apt/lists/*
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]
EOF

gcloud run deploy rental-system --source . --region me-central1 --allow-unauthenticated
npm install -g firebase-tools
firebase login --no-localhost
firebase init hosting
gcloud services enable firebase.googleapis.com
firebase projects:add-firebase direct-volt-484721-p7
gcloud services enable firebase.googleapis.com cloudresourcemanager.googleapis.com
firebase projects:addfirebase direct-volt-484721-p7
firebase init hosting
cat <<EOF > firebase.json
{
  "hosting": {
    "rewrites": [
      {
        "source": "**",
        "run": {
          "serviceId": "rental-system",
          "region": "me-central1"
        }
      }
    ]
  }
}
EOF

firebase deploy --only hosting
gcloud services enable firebasehosting.googleapis.com
firebase deploy --only hosting
gcloud services enable firebasehosting.googleapis.com
cat <<EOF > firebase.json
{
  "hosting": {
    "rewrites": [
      {
        "source": "**",
        "run": {
          "serviceId": "rental-system",
          "region": "me-central1"
        }
      }
    ]
  }
}
EOF

firebase deploy --only hosting
mkdir -p public && touch public/index.html
firebase deploy --only hosting
gcloud services enable run.googleapis.com && gcloud projects add-iam-policy-binding direct-volt-484721-p7     --member="serviceAccount:service-799715275309@gcp-sa-firebasehosting.iam.gserviceaccount.com"     --role="roles/run.admin"
mkdir -p public && echo "<html></html>" > public/index.html
firebase deploy --only hosting
gcloud auth login
# 1. ضبط المشروع الحالي
gcloud config set project direct-volt-484721-p7
# 2. تفعيل الصلاحيات لـ Firebase لكي يتحكم بـ Cloud Run
gcloud services enable run.googleapis.com
gcloud projects add-iam-policy-binding direct-volt-484721-p7     --member="serviceAccount:service-799715275309@gcp-sa-firebasehosting.iam.gserviceaccount.com"     --role="roles/run.admin"
# 3. النشر النهائي
firebase deploy --only hosting
gcloud config set project direct-volt-484721-p7
gcloud services enable run.googleapis.com
gcloud projects add-iam-policy-binding direct-volt-484721-p7     --member="serviceAccount:service-799715275309@gcp-sa-firebasehosting.iam.gserviceaccount.com"     --role="roles/run.admin"
firebase deploy --only hosting
gcloud services enable run.googleapis.com --project=direct-volt-484721-p7 && gcloud projects add-iam-policy-binding direct-volt-484721-p7     --member="serviceAccount:service-799715275309@gcp-sa-firebasehosting.iam.gserviceaccount.com"     --role="roles/run.admin" && gcloud projects add-iam-policy-binding direct-volt-484721-p7     --member="serviceAccount:service-799715275309@gcp-sa-firebasehosting.iam.gserviceaccount.com"     --role="roles/iam.serviceAccountUser"
mkdir -p public && echo "ok" > public/index.html
firebase deploy --only hosting
mkdir -p public && echo "ok" > public/index.html && cat <<EOF > firebase.json
{
  "hosting": {
    "public": "public",
    "rewrites": [
      {
        "source": "**",
        "run": {
          "serviceId": "rental-system",
          "region": "me-central1"
        }
      }
    ]
  }
}
EOF

firebase deploy --only hosting
gcloud run services list
cat <<EOF > firebase.json
{
  "hosting": {
    "public": "public",
    "rewrites": [
      {
        "source": "**",
        "run": {
          "serviceId": "rental-system",
          "region": "me-central1",
          "projectNumber": "799715275309"
        }
      }
    ]
  }
}
EOF

firebase deploy --only hosting
gcloud run deploy rental-system --source . --region me-west1 --allow-unauthenticated
gcloud run services add-iam-policy-binding rental-system     --region=me-west1     --member="allUsers"     --role="roles/run.invoker"
gcloud run services add-iam-policy-binding rental-system     --region=me-west1     --member="allUsers"     --role="roles/run.invoker"
gcloud resource-manager org-policies disable-enforce     iam.allowedPolicyMemberDomains --project=direct-volt-484721-p7
gcloud run services add-iam-policy-binding rental-system     --region=me-west1     --member="allUsers"     --role="roles/run.invoker"
gcloud run deploy rental-system     --source .     --region me-west1     --allow-unauthenticated     --quiet
gcloud resource-manager org-policies disable-enforce     iam.allowedPolicyMemberDomains --project=direct-volt-484721-p7
gcloud run services add-iam-policy-binding rental-system     --region=me-west1     --member="allUsers"     --role="roles/run.invoker"
gcloud projects create valuation-free-$(date +%s) --name="Rental Valuation"
gcloud config set project valuation-free-1768778504
gcloud services enable run.googleapis.com cloudbuild.googleapis.com
gcloud run deploy rental-system     --source .     --region me-west1     --allow-unauthenticated     --quiet
gcloud config set project direct-volt-484721-p7
gcloud resource-manager org-policies disable-enforce iam.allowedPolicyMemberDomains --project=direct-volt-484721-p7
gcloud run services add-iam-policy-binding rental-system     --region=me-west1     --member="allUsers"     --role="roles/run.invoker"     --project=direct-volt-484721-p7
gcloud run services add-iam-policy-binding rental-system     --region=me-west1     --member="allUsers"     --role="roles/run.invoker"     --project=direct-volt-484721-p7
ERROR: Policy modification failed. For a binding with condition, run "gcloud alpha iam policies lint-condition" to identify issues in condition.
ERROR: (gcloud.run.services.add-iam-policy-binding) FAILED_PRECONDITION: One or more users named in the policy do not belong to a permitted customer,  perhaps due to an organization policy.
info@cloudshell:~/municipal-rent-valuation-BRANDED (direct-volt-484721-p7)$ gcloud run services add-iam-policy-binding rental-system \
ERROR: Policy modification failed. For a binding with condition, run "gcloud alpha iam policies lint-condition" to identify issues in condition.
ERROR: (gcloud.run.services.add-iam-policy-binding) FAILED_PRECONDITION: One or more users named in the policy do not belong to a permitted customer,  perhaps due to an organization policy.
info@cloudshell:~/municipal-rent-valuation-BRANDED (direct-volt-484721-p7)$ 
gcloud run services add-iam-policy-binding rental-system     --region=me-west1     --member="allUsers"     --role="roles/run.invoker"     --project=direct-volt-484721-p7
MemberInPrincipalSet(member, ['//cloudresourcemanager.googleapis.com/organizations/123456789012'])
gcloud run services update rental-system     --region=me-west1     --no-allow-unauthenticated
gcloud run deploy rental-public     --source .     --region me-west1     --allow-unauthenticated     --project direct-volt-484721-p7
cd ~/municipal-rent-valuation-BRANDED
gcloud run deploy rental-public     --source .     --region me-west1     --allow-unauthenticated     --project direct-volt-484721-p7
gcloud run services add-iam-policy-binding rental-public     --region=me-west1     --member="allUsers"     --role="roles/run.invoker"     --project=direct-volt-484721-p7
gcloud run services add-iam-policy-binding rental-public     --region=me-west1     --member="domain:gmail.com"     --role="roles/run.invoker"     --project=direct-volt-484721-p7
info@cloudshell:~/municipal-rent-valuation-BRANDED (direct-volt-484721-p7)$ gcloud run services update rental-system \
ERROR: (gcloud.run.services.update) unrecognized arguments: --no-allow-unauthenticated 
To search the help text of gcloud commands, run:
info@cloudshell:~/municipal-rent-valuation-BRANDED (direct-volt-484721-p7)$ 
npm install -g firebase-tools
gcloud run deploy rental-public     --source .     --region me-west1     --allow-unauthenticated     --project direct-volt-484721-p7     --quiet
firebase login --no-localhost
cd ~/municipal-rent-valuation-BRANDED
firebase init hosting
firebase deploy --only hosting
gcloud run services update rental-public     --region=me-west1     --set-env-vars STREAMLIT_SERVER_PORT=8080,STREAMLIT_SERVER_ADDRESS=0.0.0.0     --project=direct-volt-484721-p7
gcloud run services update rental-public     --region=me-west1     --set-env-vars STREAMLIT_SERVER_PORT=8080,STREAMLIT_SERVER_ADDRESS=0.0.0.0     --project=direct-volt-484721-p7
cat <<EOF > firebase.json
{
  "hosting": {
    "public": "public",
    "ignore": [
      "firebase.json",
      "**/.*",
      "**/node_modules/**"
    ],
    "rewrites": [
      {
        "source": "**",
        "run": {
          "serviceId": "rental-public",
          "region": "me-west1"
        }
      }
    ],
    "headers": [
      {
        "source": "**",
        "headers": [
          {
            "key": "Cache-Control",
            "value": "no-cache"
          }
        ]
      }
    ]
  }
}
EOF

firebase deploy --only hosting
cat <<EOF > firebase.json
{
  "hosting": {
    "public": "public",
    "rewrites": [
      {
        "source": "**",
        "run": {
          "serviceId": "rental-public",
          "region": "me-west1",
          "projectId": "direct-volt-484721-p7"
        }
      }
    ]
  }
}
EOF

gcloud config set project direct-volt-484721-p7
firebase deploy --only hosting --project direct-volt-484721-p7-7b8d0
gcloud run deploy rental-public     --source .     --region me-west1     --project direct-volt-484721-p7-7b8d0     --allow-unauthenticated
Enabling APIs on project [direct-volt-484721-p7-7b8d0]...
Operation "operations/acf.p2-799715275309-6f096126-a95c-478f-84ad-f5ba7dca8f0c" finished successfully.
Deploying from source requires an Artifact Registry Docker repository to store built containers. A repository named [cloud-run-source-deploy] in region [me-west1] will be created.
Do you want to continue (Y/n)?  
gcloud projects add-iam-policy-binding direct-volt-484721-p7-7b8d0     --member="serviceAccount:799715275309-compute@developer.gserviceaccount.com"     --role="roles/storage.admin"
gcloud run deploy rental-public     --source .     --region me-west1     --project direct-volt-484721-p7-7b8d0     --allow-unauthenticated
gcloud config set project direct-volt-484721-p7
gcloud builds submit --tag gcr.io/direct-volt-484721-p7/rental-app
zip -r my_project.zip .

# Install Gitea on Kubernetes

```bash
# setting node label
kubectl label nodes <Node.Name> git-data-storage=true

# 將三個檔案放在同一個目錄下，執行以下指令
kubectl apply -f .

# 修改 git-data/gitea/conf/app.ini
# ROOT_URL = http://10.97.42.83/gitea/

# gitea 網址如下，第一次需進行安裝
# https://master.k8s/gitea
```


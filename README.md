Author : Irfath Ramiz
Email  : irfathr@gmail.com
GitHub : github.com/irfath

Date : 2025-April-12

https://github.com/Irfath/ocr-devops-assignment-ifs.git


OCR Inference System (DevOps Project)

This project is a containerized, Kubernetes-deployed OCR (Optical Character Recognition) inference system. It features a KServe model backed by Tesseract and a FastAPI gateway, fully orchestrated using Helm, ArgoCD, and monitored with Prometheus + Grafana — all running on Minikube.


Implementaion documentation : https://irfathr.notion.site/DevOps-Assignment-IFS-1d2d3c71f3998050a95cef3e9a329ba0?pvs=4



Environment requirment.

OS :  Ubuntu 24.04.2 LTS

1. Python 3.11
2. Minikube
3. Docker hub 0 image push pull and build docker file
4. Helm Chart deployment stratergy
5. ArgoCD implementation
6. Monitoring - Promethus and Grafana

step 1.

run the buld-and-run Docker file.
Tag the image and push the image to docker hub repository. 

If everything are fine ARGOCD will deploy all the required resources.



important : 3 port forwadings have been used in the implementation

Minikube  : 
kubectl port-forward service/api-gateway 9000:8001 &

Argo CD  : 
kubectl port-forward svc/argocd-server -n argocd 8082:443 &


Monitoring garfanna :
kubectl port-forward svc/monitoring-grafana -n monitoring 3000:80 &



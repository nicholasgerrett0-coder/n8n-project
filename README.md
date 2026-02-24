FROM n8nio/n8n:latest

USER root

# إنشاء المجلد وإعطاء الصلاحيات للمستخدم node
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node

# البورت اللي يحتاجه Render
ENV N8N_PORT=10000

CMD ["n8n", "start"]

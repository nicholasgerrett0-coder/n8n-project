FROM n8nio/n8n:latest
USER root
RUN mkdir -p /home/node/.n8n
RUN chmod -R 777 /home/node/.n8n
USER node
ENV N8N_PORT=10000
CMD ["n8n", "start"]

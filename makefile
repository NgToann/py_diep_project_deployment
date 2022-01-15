deploy:
   docker-compose pull && docker-compose up -d --build && docker logs -f hamerapp-web
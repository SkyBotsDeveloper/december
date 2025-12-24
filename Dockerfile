FROM node:20-alpine
WORKDIR /app

# Copy everything
COPY . .

# Install root deps
RUN npm install 2>/dev/null || true

# Install backend deps
RUN cd backend && npm install 2>/dev/null || true

# Install frontend deps
RUN cd frontend && npm install 2>/dev/null || true

# Make start.sh executable
RUN chmod +x start.sh

EXPOSE 3000 4000
ENV NODE_ENV=production

CMD ["sh", "start.sh"]

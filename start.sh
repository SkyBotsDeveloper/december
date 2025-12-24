#!/bin/bash
set -e

echo "Starting December Backend..."
cd /app/backend
npm start &

echo "Starting December Frontend..."
cd /app/frontend
npm run dev &

wait

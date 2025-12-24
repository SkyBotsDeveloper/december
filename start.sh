#!/bin/bash
set -e

echo "Starting December..."
cd backend && npm start &
cd ../frontend && npm run dev &
wait

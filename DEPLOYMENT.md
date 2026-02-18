# Deployment Guide - Krish-e-Mitra

This guide covers free deployment options for the Krish-e-Mitra application.

## Quick Start with Render (Recommended - Easiest)

Render offers a free tier perfect for full-stack applications.

### Prerequisites
- GitHub account
- Render account (https://render.com)

### Steps to Deploy on Render

1. **Push to GitHub**
   ```bash
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/YOUR_USERNAME/krish-e-mitra.git
   git branch -M main
   git push -u origin main
   ```

2. **Create Render Account**
   - Go to https://render.com
   - Sign up with GitHub (recommended for automatic deployment)

3. **Deploy Using render.yaml**
   - Click "New +" → "Blueprint"
   - Connect your GitHub repository
   - Render will automatically use `render.yaml` configuration
   - Services will deploy automatically

4. **Alternative: Manual Deploy**
   - Create two separate web services:

   **Backend Service:**
   - Name: `krish-e-mitra-backend`
   - Environment: Python 3.9
   - Build Command: 
     ```
     cd Krish-e-Mitra/fertilizer-advisory-system/backend && pip install -r requirements.txt
     ```
   - Start Command:
     ```
     cd Krish-e-Mitra/fertilizer-advisory-system/backend && uvicorn main:app --host 0.0.0.0 --port $PORT
     ```

   **Frontend Service:**
   - Name: `krish-e-mitra-frontend`
   - Environment: Node 18
   - Build Command:
     ```
     cd Krish-e-Mitra/fertilizer-advisory-system/frontend && npm install && npm run build
     ```
   - Start Command:
     ```
     cd Krish-e-Mitra/fertilizer-advisory-system/frontend && npm install && npm run preview -- --host 0.0.0.0 --port $PORT
     ```

5. **Configure Environment Variables**
   - Backend: Set `DATABASE_URL=sqlite:///./data/fertilizer_advisory.db`
   - Frontend: Set `VITE_API_URL` to your backend URL

## Alternative: Vercel (Frontend) + PythonAnywhere (Backend)

### Frontend on Vercel
1. Go to https://vercel.com
2. Import your GitHub repository
3. Set root directory: `Krish-e-Mitra/fertilizer-advisory-system/frontend`
4. Deploy

### Backend on PythonAnywhere
1. Go to https://www.pythonanywhere.com
2. Sign up (free tier available)
3. Upload backend code
4. Configure WSGI file to run FastAPI with Gunicorn

## Alternative: Railway.app

Railway offers $5/month free credits (usually enough for testing).

1. Go to https://railway.app
2. Connect GitHub
3. Deploy with automatic detection

## Environment Variables to Set

**Backend:**
```
DATABASE_URL=sqlite:///./data/fertilizer_advisory.db
PYTHON_VERSION=3.9
```

**Frontend:**
```
VITE_API_URL=https://your-backend-url.onrender.com
```

## After Deployment

1. Your frontend will be available at: `https://krish-e-mitra-frontend.onrender.com`
2. Your backend API will be at: `https://krish-e-mitra-backend.onrender.com`
3. API docs at: `https://krish-e-mitra-backend.onrender.com/docs`

## Accessing the Application

1. Open frontend URL in browser
2. Login with any 10-digit mobile number
3. Use OTP: `123456` (development OTP)
4. Start using the application!

## Troubleshooting

### Backend fails to start
- Check build logs for missing dependencies
- Ensure `requirements.txt` is in backend directory
- Verify database path is writable

### Frontend can't connect to backend
- Check `VITE_API_URL` environment variable
- Ensure backend is running and accessible
- Check browser console for CORS errors
- Verify backend has CORS middleware enabled

### Cold starts
- Free tier services may have 30-50 second cold start times
- This is normal - just wait for service to spin up

## Notes

- Free tier services may go to sleep after inactivity
- First request after sleep may take 30-50 seconds
- For production, consider paid tier for better performance
- SQLite database persists between deployments on Render

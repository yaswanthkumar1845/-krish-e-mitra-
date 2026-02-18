# 🚀 Krish-e-Mitra - FREE DEPLOYMENT READY

Your application is now ready for free deployment! Follow these simple steps:

## Step 1: Create GitHub Repository (5 minutes)

1. Go to https://github.com/new
2. Name: `krish-e-mitra`
3. Click "Create repository"
4. Copy the commands shown and run them:

```bash
git remote add origin https://github.com/YOUR_USERNAME/krish-e-mitra.git
git branch -M main
git push -u origin main
```

## Step 2: Deploy to Render (2 minutes)

Render is 100% free for testing with easy one-click deployment.

### Option A: Automatic Deploy (Easiest)
1. Go to https://render.com
2. Click "New +" → "Blueprint"
3. Paste: `https://github.com/YOUR_USERNAME/krish-e-mitra`
4. Render reads `render.yaml` and deploys automatically!

### Option B: Manual Deploy
1. Sign in to Render with GitHub
2. Create Backend Web Service:
   - Name: `krish-e-mitra-backend`
   - GitHub: Select your repo
   - Root Directory: `Krish-e-Mitra/fertilizer-advisory-system/backend`
   - Build: `pip install -r requirements.txt`
   - Start: `uvicorn main:app --host 0.0.0.0 --port $PORT`

3. Create Frontend Web Service:
   - Name: `krish-e-mitra-frontend`
   - GitHub: Select your repo
   - Root Directory: `Krish-e-Mitra/fertilizer-advisory-system/frontend`
   - Build: `npm install && npm run build`
   - Start: `npm run preview -- --host 0.0.0.0 --port $PORT`

4. Set Environment Variables:
   - Backend: `DATABASE_URL=sqlite:///./data/fertilizer_advisory.db`
   - Frontend: `VITE_API_URL=https://krish-e-mitra-backend.onrender.com`

## Step 3: Access Your Application (1 minute)

After deployment (takes 2-5 minutes):

- **Frontend:** https://krish-e-mitra-frontend.onrender.com
- **Backend API:** https://krish-e-mitra-backend.onrender.com
- **API Docs:** https://krish-e-mitra-backend.onrender.com/docs

### Login Credentials
- Mobile: Any 10-digit number (e.g., 9999999999)
- OTP: **123456**

---

## Alternative Free Options

### ⭐ Render (Recommended)
✅ Full-stack support
✅ Free tier up to 2 services
✅ Easy automatic deployment
✅ Good performance
❌ Services sleep after inactivity

### Vercel (Frontend Only)
- Deploy React to https://vercel.com
- Then deploy backend separately

### Railway.app
- $5/month free credits
- Good for full-stack

### PythonAnywhere (Backend Only)
- Python-specific hosting
- Free tier available

---

## Files Created for Deployment

- `render.yaml` - Render blueprint configuration
- `vercel.json` - Vercel configuration
- `DEPLOYMENT.md` - Detailed deployment guide
- `.gitignore` - Git ignore patterns

---

## Troubleshooting

**Q: Services won't start?**
A: Check the build and deployment logs in Render dashboard

**Q: Frontend can't connect to backend?**
A: Verify `VITE_API_URL` environment variable matches your backend URL

**Q: Database errors?**
A: SQLite database auto-initializes on first run

---

## Next Steps

1. ✅ Git configured
2. ⏭️ Push to GitHub
3. ⏭️ Deploy to Render
4. ⏭️ Test the application
5. ⏭️ Share with users!

**Estimated total time: 10 minutes** ⚡

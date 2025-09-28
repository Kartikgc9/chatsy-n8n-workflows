# chatsy-n8n-workflows

Backend API workflows for Chatsy AI keyboard application.

## Workflows

1. **AI Generation** (`ai-generation.json`)
   - Endpoint: `/webhook/generate-response`
   - Generates 3 AI-powered reply suggestions

2. **Feedback Learning** (`feedback-learning.json`)
   - Endpoint: `/webhook/feedback`
   - Processes user feedback for personalization

3. **Health Monitoring** (`health-monitoring.json`)
   - Endpoint: `/webhook/health`
   - System status and performance metrics

## Environment Variables

Required for deployment:
- `HUGGING_FACE_TOKEN` - Your Hugging Face API token

## Deployment

Deploy to Railway using the n8n template, then import these workflow files.

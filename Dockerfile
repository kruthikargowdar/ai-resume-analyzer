FROM python:3.13-slim      
# Base image

WORKDIR /app               
# Working directory

COPY requirements.txt .    
# Copy dependency list

RUN pip install --no-cache-dir -r requirements.txt        
# Install dependencies

COPY . .                   
# Copy application

EXPOSE 10000                
# Document application port

CMD ["python","app.py"]    
# Start the application


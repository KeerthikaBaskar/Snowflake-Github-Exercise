from datetime import datetime

def main(session):
    # Get the current date and time
    today = datetime.now()
    
    data_str = today.strftime("%Y-%m-%d %H:%M:%S")
    
    return f"The current date and time is: {data_str}"
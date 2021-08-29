from flask import Flask 

app = Flask(__name__)

@app.route('/')
def hello_world():
    return ("Hello, world")

if __name__ == '__main__':
    print("hello console")
    for i in range(10):
        print(f'Times {i}')

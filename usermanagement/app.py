from os import environ

from flask import Flask, jsonify
import model

app = Flask(__name__)
app.config['API_KEY'] = environ.get('STRIPE_KEY')
app.config['DB_NAME'] = environ.get('DB_NAME')
app.config['DB_USER'] = environ.get('DB_USER')
app.config['DB_PWD'] = environ.get('DB_PWD')
app.config['DB_HOST'] = environ.get('DB_HOST')
app.config['DB_PORT'] = environ.get('DB_PORT')

@app.route('/usermanagement')
def home():
    return jsonify({'server':'usermanagement', 'time':model.test_microservice1()})

# if __name__ == "__main__":
#     app.run()

from flask_testing import TestCase
from app import app

class MyTest(TestCase):
    def create_app(self):
        app.config['TESTING'] = True
        return app
    
    def test_homepage(self):
        response = self.client.get('/')
        self.assert200(response)
        self.assertTemplateUsed('testing.html')
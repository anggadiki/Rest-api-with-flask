from flask import Flask
from flask_restful import Api, Resource, reqparse
from flask_cors import CORS
import pymysql

app = Flask(__name__)
api = Api(app)
CORS(app)

# Koneksi ke database MySQL
conn = pymysql.connect(
    host='localhost',
    user='root', #bisa di ganti sesuai setingan kalian
    password='password', #sesuai password yang kalian punya atau bisa di kosongkan
    database='apiflask'
)

# Membuat kursor database
cursor = conn.cursor()

# Parser untuk validasi data
parser = reqparse.RequestParser()
parser.add_argument('title', type=str, help='Title is required', required=True)
parser.add_argument('artist', type=str, help='Artist is required', required=True)

# Resource untuk daftar lagu populer (GET dan POST)
class PopularSongs(Resource):
    def get(self):
        # Mengambil data lagu populer dari database
        query = "SELECT * FROM popular_songs"
        cursor.execute(query)
        result = cursor.fetchall()

        # Mengkonversi hasil query menjadi format yang diharapkan
        songs = {}
        for row in result:
            song_id = row[0]
            title = row[1]
            artist = row[2]
            songs[song_id] = {'title': title, 'artist': artist}

        return songs

    def post(self):
        args = parser.parse_args()
        title = args['title']
        artist = args['artist']

        # Memasukkan data lagu populer ke database
        query = "INSERT INTO popular_songs (title, artist) VALUES (%s, %s)"
        cursor.execute(query, (title, artist))
        conn.commit()

        # Mendapatkan ID lagu yang baru saja dimasukkan
        song_id = cursor.lastrowid

        # Mengambil data lagu populer yang baru saja dimasukkan dari database
        query = "SELECT * FROM popular_songs WHERE id = %s"
        cursor.execute(query, song_id)
        result = cursor.fetchone()

        # Mengkonversi hasil query menjadi format yang diharapkan
        song = {
            'title': result[1],
            'artist': result[2]
        }

        return {song_id: song}, 201

# Resource untuk lagu populer individual (GET, PUT, DELETE)
class PopularSong(Resource):
    def get(self, song_id):
        # Mengambil data lagu populer dari database berdasarkan ID
        query = "SELECT * FROM popular_songs WHERE id = %s"
        cursor.execute(query, song_id)
        result = cursor.fetchone()

        # Mengkonversi hasil query menjadi format yang diharapkan
        if result:
            song_id = result[0]
            title = result[1]
            artist = result[2]
            song = {'id': song_id, 'title': title, 'artist': artist}
            return {song_id: song}
        return {'error': 'Song not found'}, 404


    def put(self, song_id):
        # Mengambil data lagu populer dari database berdasarkan ID
        query = "SELECT * FROM popular_songs WHERE id = %s"
        cursor.execute(query, song_id)
        result = cursor.fetchone()

        if result:
            args = parser.parse_args()
            title = args['title']
            artist = args['artist']

            # Mengupdate data lagu populer di database
            query = "UPDATE popular_songs SET title = %s, artist = %s WHERE id = %s"
            cursor.execute(query, (title, artist, song_id))
            conn.commit()

            # Mengambil data lagu populer yang baru saja diupdate dari database
            query = "SELECT * FROM popular_songs WHERE id = %s"
            cursor.execute(query, song_id)
            result = cursor.fetchone()

            # Mengkonversi hasil query menjadi format yang diharapkan
            song = {
                'title': result[1],
                'artist': result[2]
            }

            return {song_id: song}

        return {'error': 'Song not found'}, 404

    def delete(self, song_id):
        # Mengambil data lagu populer dari database berdasarkan ID
        query = "SELECT * FROM popular_songs WHERE id = %s"
        cursor.execute(query, song_id)
        result = cursor.fetchone()

        if result:
            # Menghapus data lagu populer dari database
            query = "DELETE FROM popular_songs WHERE id = %s"
            cursor.execute(query, song_id)
            conn.commit()

            return {'message': 'Song deleted'}

        return {'error': 'Song not found'}, 404

# Menambahkan resource ke Api
api.add_resource(PopularSongs, '/songs/popular')
api.add_resource(PopularSong, '/songs/popular/<int:song_id>')

if __name__ == '__main__':
    app.run(debug=True)

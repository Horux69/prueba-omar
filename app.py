from flask import Flask, render_template, request, redirect, flash
from flaskext.mysql import MySQL

programa = Flask(__name__)

mysql = MySQL()
programa.config['MYSQL_DATABASE_HOST'] = 'localhost'
programa.config['MYSQL_DATABASE_PORT'] = 3306
programa.config['MYSQL_DATABASE_USER'] = 'root'
programa.config['MYSQL_DATABASE_PASSWORD'] = ''
programa.config['MYSQL_DATABASE_DB'] = 'clientes_ciudades'
mysql.init_app(programa)

conexion = mysql.connect()
cursor = conexion.cursor()

@programa.route('/')
def index():
    return render_template('index.html')

@programa.route('/buscar', methods = ['POST'])
def buscar():
    nombre = request.form['nombre']

    sql = f"call clientes_ciudades.pa_cantidad_clientes_provincias('{nombre}');"
    cursor.execute(sql)
    resultado = cursor.fetchall()
    conexion.commit()

    return render_template('index.html', datos = resultado)
    



if __name__ == '__main__':
    programa.run(host='0.0.0.0', debug=True, port='8080')
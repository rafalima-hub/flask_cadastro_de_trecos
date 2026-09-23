from flask import Flask, abort, render_template
import sqlite3

app = Flask(__name__)

@app.route("/")
def index():

    with sqlite3.connect('database.db') as conn:
        conn.row_factory = sqlite3.Row
        contents = conn.execute("""
            SELECT id, name, photo
            FROM thing
                WHERE status = 'on'
                ORDER BY created_at
        """).fetchall()
    
    total = len(contents)

    return render_template(
        'index.html',
        contents=contents,
        total=total
)

@app.route('/view/<int:thing_id>')
def view(thing_id):

    with sqlite3.connect('database.db') as conn:
        conn.row_factory = sqlite3.Row
        content = conn.execute("""
            SELECT *
            FROM thing
                WHERE status = 'on'
                AND id = ?
                ORDER BY created_at
        """, (thing_id)).fetchone()

    if content is None:
        abort(404)

    return render_template(
        "view.html",
        content=content
    )

@app.route("/new")
def new():
    return render_template("new.html")

@app.route("/about")
def about():
    return render_template("about.html")

if __name__ == "__main__":
    app.run(debug=True)
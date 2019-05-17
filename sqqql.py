@app.route('/user/login', methods = ['GET', 'POST'])
def userLogin():
    if request.method == 'POST':
        username = request.form['username']
        passwordCandidate = request.form['password']

        cursor = mysql.connection.cursor()
        results = cursor.execute("SELECT * FROM userLogin where username = %s",[username])
        if results > 0 :
            data = cur.fetchone()
            password = data['password']
            #Compare Passwords
            if sha256_crypt.verify(passwordCandidate, password):
                session['loggedIn'] = True
                session['username'] = username
                session['secret_key'] = str(uuid4()).replace("-","") + str(uuid4()).replace("-","")

                return redirect(url_for('apply'))
            else :
                error = 'Invaid Username or Password'
                return redirect(url_for('userLogin'))
        else :
            error = 'Invaid Username or Password'
            return redirect(url_for('userLogin'))
        return render_template('user/userlogin.html')
    return render_template('user/userlogin.html')

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact - Website Pribadi</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <div class="container">
            <h1>Kontak Saya</h1>
            <nav>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About Me</a></li>
                    <li><a href="education.html">Education</a></li>
                    <li><a href="hobbies.html">Hobbies</a></li>
                    <li><a href="contact.php">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <section>
            <h2>Hubungi Saya</h2>
            <form action="submit_contact.php" method="POST">
                <label for="name">Nama:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="phone">Telepon:</label>
                <input type="text" id="phone" name="phone">

                <label for="message">Pesan:</label>
                <textarea id="message" name="message" rows="5" required></textarea>

                <button type="submit">Kirim Pesan</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 Website Pribadi oleh yadit firmansyah</p>
    </footer>
</body>
</html>
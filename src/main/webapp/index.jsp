<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Immersive E‑Commerce</title>
    <!-- Google Fonts + Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #ffffff;
            --bg-secondary: #fbfdfe;
            --primary-dark: #0b1e2f;
            --primary: #132e44;
            --accent: #3b82f6;
            --accent-glow: #60a5fa;
            --accent-secondary: #06b6d4;
            --card-bg: rgba(255,255,255,0.9);
            --muted: #5b6e8c;
            --muted-light: #8f9eb5;
            --border: #eef2f8;
            --success: #10b981;
            --warning: #f59e0b;
            --shadow-sm: 0 12px 30px rgba(0, 0, 0, 0.04), 0 4px 8px rgba(0, 0, 0, 0.02);
            --shadow-md: 0 20px 35px -8px rgba(0, 0, 0, 0.08);
            --shadow-hover: 0 24px 40px -12px rgba(0, 0, 0, 0.12);
            --radius-card: 24px;
            --radius-element: 40px;
            --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg-secondary);
            color: var(--primary);
            overflow-x: hidden;
        }

        /* glass morphism & smooth scroll */
        .glass-nav {
            background: rgba(255, 255, 255, 0.88);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(59,130,246,0.08);
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* header */
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 14px 0;
            flex-wrap: wrap;
        }

        .brand {
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 1.8rem;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #0f2c3f 0%, #1e4b6e 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .brand .accent {
            background: linear-gradient(125deg, var(--accent), #22d3ee);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
        }

        nav.main-nav li a {
            padding: 8px 18px;
            border-radius: 100px;
            font-weight: 500;
            transition: var(--transition);
            color: var(--primary);
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.95rem;
        }

        nav.main-nav li a:hover {
            background: rgba(59,130,246,0.08);
            color: var(--accent);
            transform: translateY(-2px);
        }

        .search {
            background: white;
            border-radius: 60px;
            padding: 6px 16px;
            display: flex;
            align-items: center;
            gap: 8px;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border);
            transition: var(--transition);
        }
        .search:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px rgba(59,130,246,0.2);
        }
        .search input {
            border: non

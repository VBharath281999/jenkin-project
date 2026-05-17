<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
  <title>Nebula — Modern E‑Commerce | Premium Experience</title>
  
  <!-- Google Fonts + Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background: #0b0e17;
      font-family: 'Inter', sans-serif;
      color: #f0f3fa;
      scroll-behavior: smooth;
      overflow-x: hidden;
    }

    /* custom scroll */
    ::-webkit-scrollbar {
      width: 8px;
    }
    ::-webkit-scrollbar-track {
      background: #1a1f2e;
    }
    ::-webkit-scrollbar-thumb {
      background: #3a4b6e;
      border-radius: 20px;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 32px;
    }

    /* glassmorphic header */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      backdrop-filter: blur(16px);
      background: rgba(11, 14, 23, 0.75);
      border-bottom: 1px solid rgba(72, 187, 255, 0.15);
      transition: all 0.3s ease;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
      padding: 16px 0;
    }

    .brand {
      font-family: 'Space Grotesk', monospace;
      font-weight: 700;
      font-size: 26px;
      background: linear-gradient(135deg, #ffffff, #78e0ff);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      letter-spacing: -0.3px;
    }
    .brand span {
      background: linear-gradient(135deg, #2cd4ff, #a0f0ff);
      -webkit-background-clip: text;
      background-clip: text;
    }

    nav.main-nav ul {
      display: flex;
      gap: 12px;
      list-style: none;
    }
    nav.main-nav li a {
      padding: 10px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      transition: 0.2s;
      display: flex;
      gap: 8px;
      align-items: center;
      color: #cdd9ff;
    }
    nav.main-nav li a:hover {
      background: rgba(45, 212, 255, 0.12);
      color: #8ae9ff;
      transform: translateY(-1px);
    }

    .search {
      display: flex;
      align-items: center;
      background: rgba(25, 32, 48, 0.8);
      backdrop-filter: blur(4px);
      border-radius: 60px;
      padding: 8px 16px;
      gap: 12px;
      border: 1px solid rgba(45, 212, 255, 0.25);
    }
    .search input {
      background: transparent;
      border: none;
      outline: none;
      color: white;
      font-size: 14px;
      width: 200px;
    }
    .search input::placeholder {
      color: #7c88a6;
    }

    .icon-btn {
      background: transparent;
      border: none;
      color: #e0e9ff;
      font-size: 1.3rem;
      cursor: pointer;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn:hover { color: #2cd4ff; transform: scale(1.05); }

    .cart {
      position: relative;
      background: rgba(45, 212, 255, 0.1);
      border-radius: 40px;
      padding: 8px 14px;
    }
    .cart-count {
      position: absolute;
      top: -6px;
      right: -6px;
      background: #ff5e7c;
      color: white;
      font-size: 11px;
      font-weight: 800;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 0 6px #ff5e7c;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 24px;
      color: white;
    }

    /* Hero section - futuristic */
    .hero {
      position: relative;
      background: radial-gradient(circle at 20% 30%, #111827, #03050b);
      border-radius: 0 0 48px 48px;
      overflow: hidden;
      padding: 70px 0;
      margin-bottom: 20px;
    }
    .hero::before {
      content: "";
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1550745165-9bc0b252726f?auto=format&fit=crop&w=1500&q=80') center/cover no-repeat;
      opacity: 0.2;
      mix-blend-mode: overlay;
    }
    .hero-content {
      position: relative;
      z-index: 2;
      text-align: center;
      max-width: 780px;
      margin: 0 auto;
    }
    .hero h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 52px;
      font-weight: 700;
      background: linear-gradient(135deg, #FFF, #9be6ff);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      margin-bottom: 20px;
    }
    .hero p {
      font-size: 1.1rem;
      color: #b8c7ff;
      margin-bottom: 32px;
    }
    .btn {
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      transition: all 0.25s ease;
      border: none;
      cursor: pointer;
      font-size: 0.95rem;
    }
    .btn-primary {
      background: linear-gradient(95deg, #2cd4ff, #0080ff);
      color: #0a0f1a;
      box-shadow: 0 6px 14px rgba(44, 212, 255, 0.25);
    }
    .btn-primary:hover {
      transform: translateY(-2px);
      box-shadow: 0 12px 22px rgba(44, 212, 255, 0.4);
    }
    .btn-outline {
      background: transparent;
      border: 1.5px solid rgba(44, 212, 255, 0.8);
      color: #d4f0ff;
      margin-left: 12px;
    }
    .btn-outline:hover {
      background: rgba(44, 212, 255, 0.1);
      border-color: #2cd4ff;
    }

    .section-title {
      font-family: 'Space Grotesk';
      font-size: 32px;
      letter-spacing: -0.5px;
      margin-bottom: 12px;
    }
    .section-desc {
      color: #919dbe;
      margin-bottom: 32px;
    }

    /* category cards — 3D glass */
    .grid {
      display: grid;
      gap: 28px;
    }
    .categories {
      grid-template-columns: repeat(6, 1fr);
    }
    .cat-card {
      background: rgba(20, 28, 45, 0.65);
      backdrop-filter: blur(8px);
      border-radius: 28px;
      padding: 22px 12px;
      text-align: center;
      border: 1px solid rgba(72, 187, 255, 0.2);
      transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-8px);
      background: rgba(35, 48, 75, 0.8);
      border-color: #2cd4ff;
      box-shadow: 0 20px 30px -12px rgba(0, 0, 0, 0.5);
    }
    .cat-card .icon {
      font-size: 36px;
      background: linear-gradient(145deg, #3ee0ff, #0f6eff);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }
    .cat-card h4 {
      margin-top: 12px;
      font-weight: 600;
    }

    /* Products */
    .products {
      grid-template-columns: repeat(4, 1fr);
    }
    .product-card {
      background: #11161f;
      border-radius: 28px;
      overflow: hidden;
      transition: 0.3s;
      border: 1px solid #1f2a3c;
      backdrop-filter: blur(4px);
      box-shadow: 0 12px 24px -12px rgba(0, 0, 0, 0.5);
    }
    .product-card:hover {
      transform: translateY(-6px);
      border-color: #2cd4ff;
      box-shadow: 0 24px 36px -12px rgba(44, 212, 255, 0.2);
    }
    .product-img {
      width: 100%;
      height: 220px;
      object-fit: cover;
      transition: 0.4s;
    }
    .product-card:hover .product-img {
      transform: scale(1.02);
    }
    .product-info {
      padding: 18px 16px;
    }
    .price {
      font-size: 22px;
      font-weight: 800;
      color: #8ae9ff;
    }
    .old-price {
      font-size: 13px;
      text-decoration: line-through;
      color: #7b89a8;
      margin-left: 8px;
    }
    .rating {
      color: #ffcd4a;
      letter-spacing: 2px;
    }
    .add-cart-btn {
      background: linear-gradient(105deg, #2a3b58, #141e30);
      border: none;
      border-radius: 40px;
      padding: 10px;
      font-weight: 600;
      color: white;
      width: 100%;
      margin-top: 12px;
      transition: 0.2s;
      cursor: pointer;
    }
    .add-cart-btn:hover {
      background: #2cd4ff;
      color: #0a0f1a;
    }

    /* Deal flash sale */
    .deal-card {
      background: linear-gradient(125deg, #0f172a, #051024);
      border-radius: 48px;
      display: flex;
      gap: 20px;
      overflow: hidden;
      border: 1px solid #2c4a7a;
    }
    .timer {
      display: flex;
      gap: 16px;
      margin: 20px 0;
    }
    .time-box {
      background: #00000055;
      backdrop-filter: blur(8px);
      padding: 12px 16px;
      border-radius: 18px;
      text-align: center;
      min-width: 70px;
      font-weight: 700;
      font-size: 26px;
      border: 1px solid #2cd4ff55;
    }
    .deal-discount {
      background: #ff3366;
      border-radius: 60px;
      padding: 6px 14px;
      font-weight: 800;
    }

    /* testimonials */
    .testimonial-card {
      background: rgba(18, 24, 40, 0.7);
      backdrop-filter: blur(12px);
      border-radius: 28px;
      padding: 24px;
      border: 1px solid #2a3b5855;
    }

    /* Newsletter */
    .newsletter-glow {
      background: radial-gradient(circle at 30% 20%, #131d32, #04070f);
      border-radius: 48px;
      padding: 48px 32px;
      text-align: center;
    }

    footer {
      border-top: 1px solid #1e2a3e;
      padding: 48px 0 32px;
      color: #8d9cc0;
    }

    @media (max-width: 1100px) {
      .categories { grid-template-columns: repeat(3,1fr); }
      .products { grid-template-columns: repeat(2,1fr); }
    }
    @media (max-width: 800px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: block; }
      .search input { width: 120px; }
      .deal-card { flex-direction: column; }
      .hero h1 { font-size: 38px; }
    }
    @media (max-width: 550px) {
      .products { grid-template-columns: 1fr; }
      .categories { grid-template-columns: 1fr; }
      .container { padding: 0 20px; }
    }
    button:active { transform: scale(0.97); }
    .badge-new {
      position: absolute;
      background: #2cd4ff;
      padding: 4px 12px;
      border-radius: 60px;
      font-weight: 800;
      font-size: 12px;
      margin: 12px;
    }
  </style>
</head>
<body>
<header>
  <div class="container header-inner">
    <div style="display: flex; align-items: center; gap: 20px;">
      <button class="mobile-toggle" id="mobileToggleBtn"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#">NEBULA<span>.</span></a>
    </div>
    <nav class="main-nav" id="desktopNav">
      <ul>
        <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
        <li><a href="#" id="catTrigger"><i class="fas fa-layer-group"></i> Categories</a></li>
        <li><a href="#deals"><i class="fas fa-bolt"></i> FlashSale</a></li>
        <li><a href="#reviews"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>
    <div style="display: flex; gap: 16px; align-items: center;">
      <div class="search">
        <i class="fas fa-search" style="color:#7c9eff"></i>
        <input type="text" id="searchField" placeholder="Search smartwatch, laptop...">
      </div>
      <div class="header-actions" style="display: flex; gap: 10px;">
        <a class="icon-btn" href="#"><i class="far fa-heart"></i></a>
        <a class="cart" href="#" id="cartIcon">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-count" id="cartCountDisplay">0</span>
        </a>
      </div>
    </div>
  </div>
  <!-- mobile menu drawer -->
  <div id="mobileMenuDrawer" style="display: none; background: #0b0f1a; border-top: 1px solid #1f2a44; padding: 16px 0;">
    <div class="container">
      <ul style="list-style: none; display: flex; flex-direction: column; gap: 14px;">
        <li><a href="#" style="font-size: 18px;">✨ Home</a></li>
        <li><a href="#" style="font-size: 18px;">🔥 Trending</a></li>
        <li><a href="#deals" style="font-size: 18px;">⚡ Deals</a></li>
        <li><a href="#" style="font-size: 18px;">📦 Categories</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <section class="hero">
    <div class="container hero-content">
      <h1>Unlock the future of style</h1>
      <p>Premium electronics, streetwear & accessories — immersive deals, lightning fast delivery</p>
      <div>
        <button class="btn btn-primary" id="shopNowHero"><i class="fas fa-store"></i> Shop Collection</button>
        <button class="btn btn-outline" id="exploreDealsHero"><i class="fas fa-gem"></i> Flash Deals</button>
      </div>
    </div>
  </section>

  <div class="container">
    <!-- Categories Section -->
    <section style="margin: 48px 0 32px;">
      <div style="text-align: center;">
        <h2 class="section-title">Trending categories</h2>
        <p class="section-desc">Explore curated collections with futuristic design</p>
      </div>
      <div class="grid categories" id="dynamicCategories"></div>
    </section>

    <!-- Products Grid -->
    <section style="margin: 48px 0 32px;">
      <div style="display: flex; justify-content: space-between; align-items: baseline; flex-wrap: wrap;">
        <h2 class="section-title">✨ Best sellers</h2>
        <span class="muted" style="color:#8699c2">⭐ trending now</span>
      </div>
      <div class="grid products" id="productGridContainer"></div>
    </section>

    <!-- Flash Deal Section -->
    <section id="deals" style="margin: 64px 0;">
      <div class="deal-card">
        <img src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=1000&q=80" alt="deal product" style="width: 45%; object-fit: cover; max-height: 380px;">
        <div class="content" style="padding: 36px;">
          <h2 style="font-size: 34px;">⚡ MacBook Pro M3</h2>
          <p style="color:#bbd4ff">Ultimate performance. 36h battery life. Pro motion.</p>
          <div class="timer" id="countdownTimer">
            <div class="time-box"><span id="daysCount">0</span><span style="font-size: 12px; display: block;">Days</span></div>
            <div class="time-box"><span id="hoursCount">00</span><span style="font-size: 12px; display: block;">Hrs</span></div>
            <div class="time-box"><span id="minutesCount">00</span><span style="font-size: 12px; display: block;">Min</span></div>
            <div class="time-box"><span id="secondsCount">00</span><span style="font-size: 12px; display: block;">Sec</span></div>
          </div>
          <div style="display: flex; gap: 16px; align-items: center; margin: 20px 0;">
            <div><span class="price" style="font-size: 36px;">$1,299</span><span class="old-price" style="font-size: 20px;">$1,799</span></div>
            <span class="deal-discount">-28% OFF</span>
          </div>
          <button class="btn btn-primary" id="flashDealBtn" style="background: #ff5f6d;"><i class="fas fa-bolt"></i> Grab deal now</button>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section id="reviews" style="margin: 64px 0;">
      <div style="text-align: center;">
        <h2 class="section-title">Loved by customers</h2>
        <p class="section-desc">Join 10k+ happy shoppers around the world</p>
      </div>
      <div class="testimonials" style="display: flex; gap: 24px; overflow-x: auto; padding-bottom: 12px;">
        <div class="testimonial-card" style="min-width: 300px;">
          <div class="rating">★★★★★</div>
          <p style="margin: 12px 0;">"Insane quality and the delivery was super fast. The site experience is next level."</p>
          <div><strong>— Luna Chen</strong> <span style="color:#7b98d4">✨ verified</span></div>
        </div>
        <div class="testimonial-card" style="min-width: 300px;">
          <div class="rating">★★★★★</div>
          <p style="margin: 12px 0;">"Best online shopping UI ever, the deals are legit and support is great."</p>
          <div><strong>— Marcus V.</strong> <span style="color:#7b98d4">✨ top buyer</span></div>
        </div>
        <div class="testimonial-card" style="min-width: 300px;">
          <div class="rating">★★★★½</div>
          <p style="margin: 12px 0;">"Nebula has become my go-to store. Always fresh drops."</p>
          <div><strong>— Sophia Rivera</strong> <span style="color:#7b98d4">⭐ influencer</span></div>
        </div>
      </div>
    </section>

    <!-- Newsletter -->
    <section style="margin: 56px 0 48px;">
      <div class="newsletter-glow">
        <h3 style="font-size: 28px;">🚀 Join the Nebula club</h3>
        <p>Get exclusive early access + 15% off your first order</p>
        <form id="newsletterForm" style="display: flex; justify-content: center; gap: 12px; flex-wrap: wrap; margin-top: 20px;">
          <input type="email" id="newsEmail" placeholder="you@example.com" style="background:#0d1322; border:1px solid #2b3b60; border-radius: 60px; padding: 14px 22px; width: 300px; color: white;">
          <button type="submit" class="btn btn-primary"><i class="fas fa-paper-plane"></i> Subscribe</button>
        </form>
        <div id="newsMsg" style="margin-top: 14px; font-size: 14px;"></div>
      </div>
    </section>
  </div>

  <footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 28px;">
      <div><div style="font-weight: 800; font-size: 22px;">NEBULA.</div><div class="muted" style="margin-top: 8px;">© <span id="currentYear"></span> — futuristic commerce</div></div>
      <div style="display: flex; gap: 48px;"><div><strong>Explore</strong><div class="muted">New arrivals<br>Gift cards<br>Offers</div></div><div><strong>Support</strong><div class="muted">Help center<br>Returns<br>Contact</div></div></div>
    </div>
  </footer>
</main>

<script>
  // data
  const categoriesData = [
    { id: 'smartphones', name: 'Smartphones', icon: 'fa-mobile-screen' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop-code' },
    { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
    { id: 'watches', name: 'Wearables', icon: 'fa-apple-alt' },
    { id: 'gaming', name: 'Gaming', icon: 'fa-gamepad' },
    { id: 'fashion', name: 'Streetwear', icon: 'fa-shoe-prints' }
  ];

  const productList = [
    { id: 101, title: "iPhone 15 Pro", price: 1099, oldPrice: 1299, rating: 5, img: "https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80", category: "Smartphones" },
    { id: 102, title: "Sony WH-1000XM5", price: 349, oldPrice: 499, rating: 5, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category: "Audio" },
    { id: 103, title: "RTX 4080 Laptop", price: 2499, rating: 4, img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80", category: "Laptops" },
    { id: 104, title: "Galaxy Watch6", price: 289, oldPrice: 349, rating: 4, img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80", category: "Wearables" },
    { id: 105, title: "Nike Tech Fleece", price: 149, rating: 5, img: "https://images.unsplash.com/photo-1556906781-9a412961c28c?auto=format&fit=crop&w=600&q=80", category: "Streetwear" },
    { id: 106, title: "PS5 Controller", price: 69, oldPrice: 79, rating: 5, img: "https://images.unsplash.com/photo-1607853202273-797f1c22a38e?auto=format&fit=crop&w=600&q=80", category: "Gaming" }
  ];

  let cartTotal = 0;
  function updateCartUI() { document.getElementById('cartCountDisplay').innerText = cartTotal; }

  function addToCartGlobal(id) {
    cartTotal++;
    updateCartUI();
    const btn = document.querySelector(`.add-cart-btn[data-pid='${id}']`);
    if(btn) { btn.innerText = "✓ Added"; setTimeout(() => btn.innerText = "<i class='fas fa-cart-plus'></i> Add to cart", 1000); }
    else { alert("Item added to cart"); }
  }

  function renderCategories() {
    const container = document.getElementById('dynamicCategories');
    container.innerHTML = "";
    categoriesData.forEach(c => {
      const div = document.createElement('div');
      div.className = "cat-card";
      div.innerHTML = `<div class="icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><div class="muted" style="font-size:13px;">shop now →</div>`;
      div.addEventListener('click', () => {
        document.getElementById('searchField').value = c.name;
        filterProductsBySearch(c.name);
        document.getElementById('productGridContainer').scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
      container.appendChild(div);
    });
  }

  function filterProductsBySearch(query) {
    const q = query.trim().toLowerCase();
    let filtered = productList.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    if(filtered.length === 0) filtered = productList;
    renderProducts(filtered);
  }

  function renderProducts(productsArray) {
    const grid = document.getElementById('productGridContainer');
    grid.innerHTML = "";
    productsArray.forEach(p => {
      const card = document.createElement('div');
      card.className = "product-card";
      card.innerHTML = `
        <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
        <div class="product-info">
          <h4 style="font-weight: 600;">${p.title}</h4>
          <div class="rating">${'★'.repeat(p.rating)}${p.rating <5 ? '☆'.repeat(5-p.rating) : ''}</div>
          <div><span class="price">$${p.price.toLocaleString()}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
          <button class="add-cart-btn" data-pid="${p.id}"><i class="fas fa-cart-plus"></i> Add to cart</button>
        </div>
      `;
      grid.appendChild(card);
      const btn = card.querySelector('.add-cart-btn');
      btn.addEventListener('click', (e) => { e.stopPropagation(); addToCartGlobal(p.id); });
    });
  }

  // timer deal
  function setupDealTimer() {
    const targetTime = new Date().getTime() + (26 * 3600 * 1000) + (15 * 60 * 1000);
    function tick() {
      const now = new Date().getTime();
      const diff = targetTime - now;
      if(diff <= 0) { clearInterval(timerInt); document.getElementById('daysCount').innerText = "0"; return; }
      const days = Math.floor(diff / (86400000));
      const hours = Math.floor((diff % 86400000) / 3600000);
      const minutes = Math.floor((diff % 3600000) / 60000);
      const secs = Math.floor((diff % 60000) / 1000);
      document.getElementById('daysCount').innerText = days;
      document.getElementById('hoursCount').innerText = String(hours).padStart(2,'0');
      document.getElementById('minutesCount').innerText = String(minutes).padStart(2,'0');
      document.getElementById('secondsCount').innerText = String(secs).padStart(2,'0');
    }
    tick();
    const timerInt = setInterval(tick, 1000);
  }

  // Search & Events
  document.getElementById('searchField').addEventListener('keypress', (e) => { if(e.key === 'Enter') filterProductsBySearch(e.target.value); });
  document.querySelector('#shopNowHero').addEventListener('click', () => { document.getElementById('productGridContainer').scrollIntoView({ behavior: 'smooth' }); });
  document.querySelector('#exploreDealsHero').addEventListener('click', () => { document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }); });
  document.getElementById('flashDealBtn').addEventListener('click', () => { cartTotal++; updateCartUI(); alert("🔥 Flash deal added to cart!"); });

  // Newsletter
  const newsForm = document.getElementById('newsletterForm');
  newsForm.addEventListener('submit', (e) => { e.preventDefault(); const email = document.getElementById('newsEmail').value.trim(); const msgDiv = document.getElementById('newsMsg'); if(!email.includes('@')) { msgDiv.innerHTML = "⚠️ valid email required"; msgDiv.style.color = "#ff9999"; } else { msgDiv.innerHTML = "🎉 Thanks! Enjoy 15% off on first order."; msgDiv.style.color = "#7effbc"; document.getElementById('newsEmail').value = ""; setTimeout(() => msgDiv.innerHTML = "", 3000); } });

  // Mobile Menu
  const mobileBtn = document.getElementById('mobileToggleBtn');
  const mobileDrawer = document.getElementById('mobileMenuDrawer');
  mobileBtn.addEventListener('click', () => { mobileDrawer.style.display = mobileDrawer.style.display === 'none' ? 'block' : 'none'; });

  // initial load
  renderCategories();
  renderProducts(productList);
  setupDealTimer();
  updateCartUI();
  document.getElementById('currentYear').innerText = new Date().getFullYear();
  document.getElementById('cartIcon').addEventListener('click', (e) => { e.preventDefault(); alert(`Your cart has ${cartTotal} items. (demo checkout)`); });
  document.getElementById('catTrigger').addEventListener('click', (e) => { e.preventDefault(); alert("✨ Browse categories below the hero ✨"); });
</script>
</body>
</html>

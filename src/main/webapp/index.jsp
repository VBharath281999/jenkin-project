<!-- ===== Add these styles inside your existing <style> tag ===== -->

<style>
/* =========================
   MODERN UI UPGRADE
========================= */

:root{
    --primary:#111827;
    --secondary:#1f2937;
    --accent:#7c3aed;
    --accent2:#06b6d4;
    --light:#f8fafc;
    --white:#ffffff;
    --text:#0f172a;
    --muted:#64748b;
    --shadow:0 10px 30px rgba(0,0,0,0.08);
}

/* Smooth */
html{
    scroll-behavior:smooth;
}

/* Body */
body{
    background:linear-gradient(to bottom,#f8fafc,#eef2ff);
    color:var(--text);
}

/* Header */
header{
    background:rgba(255,255,255,0.8);
    backdrop-filter:blur(14px);
    border-bottom:1px solid rgba(255,255,255,0.3);
    box-shadow:0 4px 20px rgba(0,0,0,0.03);
}

/* Brand */
.brand{
    font-size:24px;
    letter-spacing:-1px;
}

.brand .accent{
    background:linear-gradient(90deg,var(--accent),var(--accent2));
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

/* Nav */
nav.main-nav li a{
    transition:0.3s ease;
    position:relative;
}

nav.main-nav li a:hover{
    color:var(--accent);
    background:rgba(124,58,237,0.08);
}

/* Search */
.search{
    background:white;
    box-shadow:var(--shadow);
    border:1px solid rgba(0,0,0,0.04);
}

/* Hero Section */
.hero{
    min-height:650px;
    border-radius:0 0 40px 40px;
    position:relative;
    overflow:hidden;
}

.hero::before{
    content:'';
    position:absolute;
    inset:0;
    background:linear-gradient(
        135deg,
        rgba(124,58,237,0.7),
        rgba(6,182,212,0.5)
    );
    z-index:0;
}

.hero .container{
    position:relative;
    z-index:1;
}

.hero h1{
    font-size:68px;
    line-height:1.1;
    max-width:850px;
    margin:auto;
    margin-bottom:20px;
    font-weight:700;
}

.hero p{
    font-size:18px;
    max-width:700px;
    margin:auto;
    opacity:0.95;
}

/* Buttons */
.btn{
    transition:0.3s ease;
    box-shadow:var(--shadow);
}

.btn:hover{
    transform:translateY(-4px);
}

.btn-primary{
    background:linear-gradient(135deg,var(--accent),var(--accent2));
    color:white;
}

.btn-ghost{
    border:1px solid rgba(255,255,255,0.4);
}

/* Section Titles */
.title h2{
    font-size:40px;
    margin-bottom:8px;
    color:var(--primary);
}

.title p{
    font-size:16px;
}

/* Category Cards */
.cat-card{
    background:rgba(255,255,255,0.75);
    backdrop-filter:blur(12px);
    border:1px solid rgba(255,255,255,0.4);
    transition:0.4s ease;
    padding:30px 20px;
}

.cat-card:hover{
    transform:translateY(-10px) scale(1.03);
    box-shadow:0 20px 50px rgba(124,58,237,0.15);
}

.cat-card .icon{
    width:70px;
    height:70px;
    margin:auto;
    border-radius:20px;
    display:flex;
    align-items:center;
    justify-content:center;
    background:linear-gradient(135deg,var(--accent),var(--accent2));
    color:white;
    font-size:30px;
}

/* Product Cards */
.product{
    position:relative;
    overflow:hidden;
    border-radius:22px;
    background:white;
    transition:0.4s ease;
    border:1px solid rgba(0,0,0,0.04);
}

.product:hover{
    transform:translateY(-12px);
    box-shadow:0 25px 60px rgba(0,0,0,0.12);
}

.product img{
    transition:0.5s ease;
}

.product:hover img{
    transform:scale(1.08);
}

/* Product Overlay */
.product::after{
    content:'';
    position:absolute;
    inset:0;
    background:linear-gradient(to top,rgba(0,0,0,0.1),transparent);
    pointer-events:none;
}

/* Product Body */
.product-body{
    padding:20px;
}

.product h5{
    font-size:18px;
}

/* Price */
.price{
    font-size:22px;
    color:var(--accent);
}

/* Add Button */
.add-btn{
    background:linear-gradient(135deg,var(--accent),var(--accent2));
    border:none;
    transition:0.3s ease;
}

.add-btn:hover{
    transform:scale(1.03);
}

/* Wishlist */
.wish-btn{
    background:#f1f5f9;
    border:none;
    transition:0.3s ease;
}

.wish-btn:hover{
    background:var(--accent);
    color:white;
}

/* Deal Section */
.deal{
    border-radius:30px;
    overflow:hidden;
    background:white;
    box-shadow:0 20px 60px rgba(0,0,0,0.08);
}

.deal img{
    transition:0.5s ease;
}

.deal:hover img{
    transform:scale(1.05);
}

.time-box{
    background:linear-gradient(135deg,var(--accent),var(--accent2));
    box-shadow:var(--shadow);
}

/* Testimonials */
.testimonial{
    border-radius:24px;
    background:rgba(255,255,255,0.85);
    backdrop-filter:blur(10px);
    border:1px solid rgba(255,255,255,0.5);
    transition:0.3s ease;
}

.testimonial:hover{
    transform:translateY(-8px);
}

/* Newsletter */
.newsletter{
    border-radius:32px;
    background:linear-gradient(
        135deg,
        var(--accent),
        var(--accent2)
    );
    box-shadow:0 20px 50px rgba(124,58,237,0.2);
}

.newsletter h3{
    font-size:38px;
}

.newsletter input{
    background:white;
    box-shadow:var(--shadow);
}

/* Footer */
footer{
    background:#0f172a;
    color:#cbd5e1;
    margin-top:60px;
}

footer .muted{
    color:#94a3b8;
}

footer .icon-btn{
    color:white;
    background:rgba(255,255,255,0.08);
    width:42px;
    height:42px;
    border-radius:50%;
    display:flex;
    align-items:center;
    justify-content:center;
    transition:0.3s ease;
}

footer .icon-btn:hover{
    background:linear-gradient(
        135deg,
        var(--accent),
        var(--accent2)
    );
}

/* Scrollbar */
::-webkit-scrollbar{
    width:10px;
}

::-webkit-scrollbar-thumb{
    background:linear-gradient(
        var(--accent),
        var(--accent2)
    );
    border-radius:10px;
}

/* Responsive */
@media(max-width:768px){

    .hero{
        min-height:520px;
    }

    .hero h1{
        font-size:42px;
    }

    .title h2{
        font-size:32px;
    }

    .newsletter h3{
        font-size:28px;
    }
}
</style>

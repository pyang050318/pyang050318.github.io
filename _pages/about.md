---
layout: default
title: Home
permalink: /
nav: false
nav_order: 1
sitemap: true
---

<style>
.py-home {
  --py-blue: #0754a5;
  --py-blue-dark: #043a73;
  --py-blue-soft: #eef6ff;
  --py-gold: #c99a2e;
  --py-ink: #172033;
  --py-muted: #5b6678;
  --py-line: #d9e4f2;
  --py-surface: #ffffff;
  --py-soft: #f6f9fd;
  color: var(--py-ink);
  font-family: Inter, Arial, sans-serif;
}

[data-theme="dark"] .py-home {
  --py-ink: #edf3fc;
  --py-muted: #aebbd0;
  --py-line: #33445d;
  --py-surface: #172033;
  --py-soft: #111a2a;
  --py-blue-soft: #172b47;
}

.py-home *, .py-home *::before, .py-home *::after { box-sizing: border-box; }
.post > .post-header,
.post-header,
.page-title { display: none !important; }

.py-grid {
  display: grid;
  grid-template-columns: 275px minmax(0, 1fr);
  gap: 2.2rem;
  align-items: start;
  margin-top: 2.2rem;
}

.py-sidebar {
  position: sticky;
  top: 92px;
  border-top: 4px solid var(--py-blue);
  background: var(--py-surface);
  box-shadow: 0 8px 26px rgba(22, 47, 79, .08);
}

.py-sidebar h2 {
  margin: 0;
  padding: 1.35rem 1.45rem 1rem;
  color: var(--py-ink);
  background: var(--py-soft);
  border-bottom: 1px solid var(--py-line);
  font-size: 1.26rem;
}

.py-portrait {
  display: grid;
  justify-items: center;
  padding: 1rem 1.45rem 1.15rem;
  border-bottom: 1px solid var(--py-line);
  background: var(--py-surface);
}

.py-portrait img {
  display: block;
  width: 100%;
  max-width: 168px;
  aspect-ratio: 3 / 4;
  object-fit: cover;
  border: 1px solid var(--py-line);
  background: #fff;
  box-shadow: 0 10px 24px rgba(22, 47, 79, .12);
}

.py-portrait-placeholder {
  display: grid;
  place-items: center;
  width: min(100%, 168px);
  aspect-ratio: 3 / 4;
  padding: 1rem;
  color: var(--py-muted);
  text-align: center;
  background: var(--py-soft);
  border: 1px dashed #b8d2ef;
}

.py-portrait-placeholder strong {
  display: block;
  margin-bottom: .3rem;
  color: var(--py-ink);
  font-size: .94rem;
}

.py-portrait-placeholder span {
  display: block;
  font-size: .78rem;
  line-height: 1.45;
}

.py-info {
  padding: .55rem 1.45rem 1.25rem;
}

.py-info-row {
  padding: .78rem 0;
  border-bottom: 1px solid var(--py-line);
}

.py-info-row:last-child { border-bottom: 0; }
.py-info-row dt {
  margin: 0 0 .25rem;
  color: var(--py-blue);
  font-size: .76rem;
  font-weight: 750;
  letter-spacing: .05em;
  text-transform: uppercase;
}

.py-info-row dd {
  margin: 0;
  color: var(--py-ink);
  font-size: .91rem;
  line-height: 1.6;
}

.py-info-row a { color: var(--py-blue); overflow-wrap: anywhere; }

.py-side-links {
  display: grid;
  gap: .5rem;
  padding: 0 1.45rem 1.45rem;
}

.py-side-links a {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: .62rem .8rem;
  color: var(--py-blue-dark);
  background: var(--py-blue-soft);
  font-size: .86rem;
  font-weight: 650;
  text-decoration: none;
  border-left: 3px solid var(--py-blue);
}

.py-side-links a::after { content: "→"; }

.py-section {
  padding-bottom: 2rem;
  margin-bottom: 2.15rem;
  border-bottom: 1px solid var(--py-line);
  scroll-margin-top: 90px;
}

.py-section:last-child { border-bottom: 0; }

.py-heading {
  display: flex;
  gap: .9rem;
  align-items: baseline;
  margin: 0 0 1.2rem;
  color: var(--py-ink);
  font-family: Georgia, "Times New Roman", serif;
  font-size: 1.55rem;
  line-height: 1.25;
}

.py-heading::before {
  content: "";
  flex: 0 0 5px;
  align-self: stretch;
  min-height: 1.7rem;
  background: var(--py-blue);
}

.py-lead {
  margin-top: 0;
  color: var(--py-ink);
  font-size: 1.02rem;
  line-height: 1.82;
}

.py-card-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 1rem;
}

.py-card {
  padding: 1.05rem 1.15rem;
  background: var(--py-soft);
  border-left: 3px solid var(--py-blue);
}

.py-card h3 {
  margin: 0 0 .45rem;
  color: var(--py-ink);
  font-size: 1rem;
}

.py-card p {
  margin: 0;
  color: var(--py-muted);
  font-size: .9rem;
  line-height: 1.65;
}

.py-list {
  margin: 0;
  padding-left: 1.1rem;
}

.py-list li {
  margin-bottom: .62rem;
  color: var(--py-muted);
  line-height: 1.65;
}

.py-list strong { color: var(--py-ink); }
.py-link { display: inline-block; margin-top: .75rem; color: var(--py-blue); font-weight: 650; }

@media (max-width: 900px) {
  .py-grid { grid-template-columns: 1fr; }
  .py-sidebar { position: static; }
}

@media (max-width: 640px) {
  .py-card-grid { grid-template-columns: 1fr; }
}
</style>

<div class="py-home">
  <div class="py-grid">
    <aside class="py-sidebar" aria-label="Profile summary">
      <h2>Peng Yang</h2>
      <div class="py-portrait">
               <img src="{{ '/assets/img/profile-photo.jpg' | relative_url }}" alt="Peng Yang" loading="eager">
          
      </div>
      <dl class="py-info">
        <div class="py-info-row"><dt>Affiliation</dt><dd>Future Technology College<br>Dalian University of Technology</dd></div>
        <div class="py-info-row"><dt>Program</dt><dd>Intelligent Vehicle Engineering<br>AI Future Technology Class</dd></div>
        <div class="py-info-row"><dt>Focus</dt><dd>Computer Vision<br>Medical Image Analysis</dd></div>
        <div class="py-info-row"><dt>Hometown</dt><dd>Tianshui, Gansu, China</dd></div>
        <div class="py-info-row"><dt>Email</dt><dd><a href="mailto:pyang050318@gmail.com">pyang050318@gmail.com</a></dd></div>
      </dl>
      <nav class="py-side-links" aria-label="Homepage sections">
        <a href="#profile">Profile</a>
        <a href="#education">Education</a>
        <a href="#outputs">Outputs</a>
        <a href="#projects">Projects</a>
        <a href="#competitions">Competitions</a>
        <a href="#work">Work</a>
      </nav>
    </aside>

    <main>
      <section class="py-section" id="profile">
        <h2 class="py-heading">Profile</h2>
        <p class="py-lead">I am a third-year undergraduate student majoring in Intelligent Vehicle Engineering at the Future Technology College, Dalian University of Technology.My undergraduate advisor is Professor Guanqiao Shan from the School of Artificial Intelligence, Dalian University of Technology. Professor Shan is a recipient of the National Overseas High-level Young Talents Program and was advised by Professor Yu Sun, a foreign member of the Chinese Academy of Engineering, a member of the U.S. National Academy of Engineering, and a fellow of the three national academies of Canada.My research interests focus on the interdisciplinary applications of artificial intelligence in mechanical engineering and medicine. I am particularly interested in medical image analysis, intelligent perception, and AI-assisted biomedical systems. I hope to communicate and collaborate with researchers and professionals in related fields.
</p>
      </section>

      <section class="py-section" id="education">
        <h2 class="py-heading">Education</h2>
        <div class="py-card-grid">
          <article class="py-card">
            <h3>Sep. 2020 - Jun. 2023</h3>
            <p>Tianshui No. 1 High School.</p>
          </article>
          <article class="py-card">
            <h3>Sep. 2023 - Jun. 2027</h3>
            <p>Dalian University of Technology.</p>
          </article>
        </div>
      </section>

      <section class="py-section" id="outputs">
        <h2 class="py-heading">Selected Outputs</h2>
        <ul class="py-list">
          <li><strong>ASRM video abstract:</strong> <em>Spindle Prediction of Human Oocytes Using Artificial Intelligence From Brightfield Images</em>, accepted, second author.</li>
          <li><strong>Manuscript:</strong> <em>Spindle-aware Cross-modal Diffusion for Meiotic Spindle Localization in Human Oocytes From Hoffman Modulation Contrast Microscopy</em>, in preparation, co-first author.</li>
          <li><strong>Patent:</strong> 基于普通亮场或霍夫曼成像的细胞纺锤体定位系统和方法, under application.</li>
          <li><strong>Software copyright:</strong> 卵母细胞纺锤体智能定位辅助系统, under application.</li>
        </ul>
        <a class="py-link" href="{{ '/publications/' | relative_url }}">View all outputs</a>
      </section>

      <section class="py-section" id="projects">
        <h2 class="py-heading">Projects</h2>
        <div class="py-card-grid">
          <article class="py-card"><h3>AI-based Spindle Prediction</h3><p>Medical microscopic image analysis project involving dataset improvement, cross-modal diffusion, detection, voting-based fusion, and research writing.</p></article>
          <article class="py-card"><h3>Air-ground Intelligent Perception</h3><p>Computer vision pipeline with data labeling, REAL-ESRGAN enhancement, YOLOv8 tracking, and reinforcement learning exploration.</p></article>
          <article class="py-card"><h3>RAW-domain Object Detection</h3><p>RAW image processing and YOLOv5-based detection reproduction using MindSpore-related project work.</p></article>
          <article class="py-card"><h3>Foggy-scene Object Recognition</h3><p>Team-led investigation of defogging and special-vehicle recognition under adverse weather conditions.</p></article>
        </div>
        <a class="py-link" href="{{ '/projects/' | relative_url }}">View project details</a>
      </section>

      <section class="py-section" id="competitions">
        <h2 class="py-heading">Competitions</h2>
        <ul class="py-list">
          <li><strong>National Third Prize:</strong> China Collegiate Computing Contest - AI Creative Competition.</li>
          <li><strong>National Excellence Award:</strong> China Collegiate Computing Contest - AIGC Innovation Competition.</li>
          <li><strong>Provincial Second Prize:</strong> China College Students Engineering Practice and Innovation Ability Competition.</li>
        </ul>
        <a class="py-link" href="{{ '/competitions/' | relative_url }}">View competition details</a>
      </section>

      <section class="py-section" id="work">
        <h2 class="py-heading">Social Practice & Work</h2>
        <ul class="py-list">
          <li>Class team leader, Future Technology College Class of 2023.</li>
          <li>Officer, Sports Department, Student Union of Future Technology College.</li>
          <li>Vice President, Badminton Association of Dalian University of Technology.</li>
          <li>Participated in admission outreach, Hong Kong study practice, and China-Europe youth dialogue activities.</li>
        </ul>
        <a class="py-link" href="{{ '/social-practice-work/' | relative_url }}">View detailed experience</a>
      </section>
    </main>
  </div>
</div>

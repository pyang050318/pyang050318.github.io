---
layout: page
title: Projects
permalink: /projects/
nav: true
nav_order: 3
---

<style>
.project-page { --blue:#0754a5; --soft:#eef6ff; --ink:#172033; --muted:#5b6678; --line:#d9e4f2; }
.project-intro { color: var(--muted); line-height: 1.75; }
.project-card { margin: 1.4rem 0; padding: 1.25rem 1.4rem; border: 1px solid var(--line); background: #fff; box-shadow: 0 2px 10px rgba(15,23,42,.04); }
.project-card h2 { margin: 0 0 .45rem; padding-left: 13px; border-left: 5px solid var(--blue); color: var(--ink); }
.project-meta { color: var(--blue); font-weight: 650; margin-bottom: .8rem; }
.project-card p, .project-card li { color: var(--muted); line-height: 1.65; }
.project-tags span { display: inline-block; margin: 4px 5px 4px 0; padding: 5px 10px; color: #073b7a; background: var(--soft); border: 1px solid #d8e8ff; font-size: .88rem; }
.image-slot { margin-top: .85rem; padding: .85rem 1rem; color: var(--muted); background: var(--soft); border: 1px dashed #b8d2ef; font-size: .9rem; overflow: hidden; }
.image-slot img, .media-box img { display: block; max-width: 100%; height: auto; background: #fff; }
.image-slot video, .media-box video { display: block; width: 100%; height: auto; border: 0; background: #000; }
.image-slot iframe, .media-box iframe { display: block; width: 100%; aspect-ratio: var(--media-ratio, 16 / 9); height: auto; border: 0; background: #000; }
.media-box { margin-top: .85rem; overflow: hidden; border: 1px solid var(--line); background: #fff; }
.media-caption { margin: 0; padding: .65rem .8rem; color: var(--muted); background: var(--soft); font-size: .86rem; line-height: 1.55; }
</style>

<div class="project-page">

<p class="project-intro">My project experience is organized around computer vision practice: building datasets, improving image quality, detecting weak or difficult targets, and turning model outputs into usable systems or research results.</p>

<article class="project-card">
<h2>AI-based Meiotic Spindle Prediction in Human Oocytes</h2>
<div class="project-meta">Medical image analysis · Project leader · Nov. 2025 - Present</div>
<p>This project studies how to predict and localize meiotic spindles in human oocytes from brightfield and Hoffman modulation contrast microscopy images. The work focuses on weak-signal localization, cross-modal generation, object detection, and voting-based fusion for stable prediction.</p>
<ul>
  <li>Participated in experimental design, dataset improvement, model optimization, and result analysis.</li>
  <li>Proposed or refined ideas including dataset enhancement, weighted loss, and multi-result voting.</li>
  <li>Contributed to ASRM video abstract preparation, patent writing, software copyright writing, and manuscript preparation.</li>
</ul>
<p>This link demonstrates the ICSI procedure. Our goal is to avoid damaging the meiotic spindle during oocyte injection.</p>
<div class="media-box">
  <iframe
    src="https://player.bilibili.com/player.html?isOutside=true&aid=116894782786069&bvid=BV18WN76EERs&cid=39818298965&p=1"
    scrolling="no"
    border="0"
    frameborder="0"
    framespacing="0"
    allowfullscreen="true">
  </iframe>
</div>
</article>

<article class="project-card">
<h2>Air-ground Cooperative Intelligent Perception</h2>
<div class="project-meta">Computer vision and intelligent systems · Undergraduate leader · Jun. 2024 - Sep. 2025</div>
<p>This project built a perception workflow for air-ground cooperative scenarios, including video data processing, image enhancement, object tracking, and autonomous navigation exploration.</p>
<ul>
  <li>Labeled and classified video data for visual perception tasks.</li>
  <li>Used REAL-ESRGAN for super-resolution reconstruction to improve image quality.</li>
  <li>Applied YOLOv8 for trajectory recognition and object tracking.</li>
  <li>Explored reinforcement learning for autonomous obstacle avoidance and path planning.</li>
</ul>
</article>

<article class="project-card">
<h2>RAW-domain Object Detection Based on MindSpore</h2>
<div class="project-meta">Object detection · Second leader · Sep. 2024 - Mar. 2026</div>
<p>This university-level innovation project explored object detection from RAW-domain images. I focused on RAW image conversion and processing, and reproduced YOLOv5-based detection after converting RAW images into JPG format.</p>
</article>

<article class="project-card">
<h2>Object Recognition in Foggy Environments</h2>
<div class="project-meta">Adverse-weather vision · Team leader · Feb. 2024 - Apr. 2024</div>
<p>I led a course research project on special-vehicle recognition in foggy environments. The team reviewed defogging methods, compared algorithms, and completed research writing on defogging and object recognition under adverse weather conditions.</p>
<p><strong>Outcome:</strong> Awarded Outstanding Micro-project by Future Technology College.</p>
<p>These two images demonstrate the different preprocessing methods applied to our dataset.</p>
<div class="media-box">
  <img src="{{ '/assets/img/projects/jiawu1.png' | relative_url }}" alt="Project image">
</div>
<div class="media-box">
  <img src="{{ '/assets/img/projects/jiawu2.png' | relative_url }}" alt="Project image">
</div>

</article>

</div>

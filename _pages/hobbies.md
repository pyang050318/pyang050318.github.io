---
layout: page
title: Hobbies
permalink: /hobbies/
nav: true
nav_order: 6
---

<style>
.hobby-page {
  --blue: #0754a5;
  --soft: #eef6ff;
  --ink: #172033;
  --muted: #5b6678;
  --line: #d9e4f2;
}

.hobby-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 1.2rem;
  margin-top: 1.2rem;
}

.hobby-card {
  padding: 1.25rem 1.35rem;
  border: 1px solid var(--line);
  background: #fff;
  box-shadow: 0 2px 10px rgba(15, 23, 42, 0.04);
}

.hobby-card h2 {
  margin: 0 0 0.65rem;
  padding-left: 13px;
  border-left: 5px solid var(--blue);
  color: var(--ink);
}

.hobby-card p,
.hobby-card li {
  color: var(--muted);
  line-height: 1.65;
}

.media-row {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 0.9rem;
  margin-top: 0.9rem;
}

.media-box {
  overflow: hidden;
  border: 1px solid var(--line);
  background: #fff;
}

.media-box img {
  display: block;
  width: 100%;
  height: auto;
  background: #fff;
}

.media-box video {
  display: block;
  width: 100%;
  height: auto;
  border: 0;
  background: #000;
}

.media-box iframe {
  display: block;
  width: 100%;
  aspect-ratio: var(--media-ratio, 16 / 9);
  height: auto;
  border: 0;
  background: #000;
}

.media-caption {
  margin: 0;
  padding: 0.65rem 0.8rem;
  color: var(--muted);
  background: var(--soft);
  font-size: 0.86rem;
  line-height: 1.55;
}

@media (max-width: 720px) {
  .media-row {
    grid-template-columns: 1fr;
  }
}
</style>

<div class="hobby-page">

  <div class="hobby-grid">

    <article class="hobby-card">
      <h2>Badminton</h2>
      <p>
        Badminton has been my main long-term sport. I reached the top 32 in the 2023 Dalian University of Technology Freshman Men’s Singles Badminton Tournament and the top 8 in the 2026 Dalian University of Technology B-group Men’s Singles Badminton Tournament.
      </p>

      <div class="media-row">
        <div class="media-box">
          <img src="{{ '/assets/img/hobbies/yumaoqiu1.jpg' | relative_url }}" alt="Badminton competition photo">
        </div>

        <div class="media-box">
          <img src="{{ '/assets/img/hobbies/yumaoqiu2.jpg' | relative_url }}" alt="Badminton competition photo">
        </div>
      </div>
    </article>

    <article class="hobby-card">
      <h2>Football</h2>
      <p>
        I enjoy football as a team sport and have participated in campus-level competitions. I achieved fifth place in the 2024–2025 Lingyue Nine-a-side First-level Group competition. My favorite football player is Cristiano Ronaldo, and Manchester United is the club I support.
      </p>

      <div class="media-row">
        <div class="media-box">
          <img src="{{ '/assets/img/hobbies/zuqiu.jpg' | relative_url }}" alt="Football competition photo">
        </div>

        <div class="media-box">
          <img src="{{ '/assets/img/hobbies/zuqiu2.jpg' | relative_url }}" alt="Football competition photo">
        </div>

       <div class="media-box">
          <img src="{{ '/assets/img/hobbies/zuqiu3.jpg' | relative_url }}" alt="Football competition photo">
        </div>

     <div class="media-box">
          <img src="{{ '/assets/img/hobbies/zuqiu4.jpg' | relative_url }}" alt="Football competition photo">
        </div>
      </div>


    </article>

    <article class="hobby-card">
      <h2>Table Tennis</h2>
      <p>
        I also play table tennis. I won second place in the team event at the Future Technology College Teacher-Student Table Tennis Exchange Competition of Dalian University of Technology.
      </p>
    </article>

<article class="hobby-card">
      <h2>Outdoor Activities</h2>
      <p>
        I enjoy spending time outdoors with my friends.
      </p>
<div class="media-box">
          <img src="{{ '/assets/img/hobbies/shan1.jpg' | relative_url }}" alt="Football competition photo">
        </div>

     <div class="media-box">
          <img src="{{ '/assets/img/hobbies/shan2.jpg' | relative_url }}" alt="Football competition photo">
        </div>

    </article>


  </div>

</div>
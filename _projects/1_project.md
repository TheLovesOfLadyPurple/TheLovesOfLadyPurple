---
layout: page
title: "RAIN: One-Step Watermark Extraction"
description: "BMVC 2026 TrustVis Workshop (Oral) — 47.4× lower FLOPs & 1.39 ms/image semantic watermark extraction"
img: assets/img/rain_pipeline.jpg
importance: 1
category: work
related_publications: true
---

**RAIN** (_Region-Aware Inversion Network for Semantic Watermark Extraction_) {% cite li2026rain %} is a prompt-free, U-Net-free, one-step extractor for Gaussian-Shading semantic watermarks in Stable Diffusion images, accepted for **Oral Presentation** at the **BMVC 2026 Workshop on Trustworthy Visual Computing (TrustVis)**.

- **GitHub Repository:** [TheLovesOfLadyPurple/RAIN-lightweight-NN-for-one-step-semantic-watermark-extraction](https://github.com/TheLovesOfLadyPurple/RAIN-lightweight-NN-for-one-step-semantic-watermark-extraction)
- **Paper:** [arXiv:2609.14856](https://arxiv.org/abs/2609.14856)

<div class="row mt-3">
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid loading="eager" path="assets/img/rain_pipeline.jpg" title="RAIN Architecture and Extraction Pipeline" class="img-fluid rounded z-depth-1" zoomable=true %}
  </div>
</div>
<div class="caption">
  Figure 1: RAIN extraction pipeline. Instead of running iterative multi-step diffusion U-Net inversion, RAIN decomposes high-SNR endpoint statistic recovery into two parallel width-64 NAFNet branches ($F_0$ anchor branch and $F_1, F_2$ residual/timestep branch) executing concurrently across separate CUDA streams.
</div>

### Key Contributions

- **47.4× Lower Compute & 56× Fewer Parameters:** Requires only **14.394 GFLOPs** and **15.468M** parameters, compared with ~680 GFLOPs and ~866–868M parameters for diffusion U-Net one-step extractors (**FARI** and **OSI**).
- **1.39 ms/image Parallel Inference:** Executes two independent width-64 NAFNet branches concurrently across separate CUDA streams / GPUs, achieving **22.5×–26.8× lower latency** than OSI (`31.32 ms`) and FARI (`37.34 ms`).
- **SOTA Distortion Robustness & Strict FPR Control:** Matches 50-step DDIM Inversion on clean SD v2.1 images (**99.99%** bit accuracy) while remaining robust across 10 severe distortions (JPEG, crop, drop, resize, Gaussian/median blur, noise, brightness) with verified false-positive control across $10^6$ non-watermarked comparisons.
- **Theoretical Analysis of Distilled Models & DDIM Inversion:** Provides a closed-form proof using multivariable Taylor expansion and the Test Function Method explaining why endpoint-jumping distilled models (LCM, DMD2) trained on independently noised marginals cannot directly use deterministic DDIM Inversion.

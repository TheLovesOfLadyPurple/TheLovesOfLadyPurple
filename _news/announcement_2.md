---
layout: post
title: "EMPURPLE: Training-Free Diversity Enhancement for Diffusion Distillation & Live Hugging Face Demo"
date: 2026-09-29 14:16:00+0800
inline: false
related_posts: false
---

We released **[EMPURPLE](https://github.com/TheLovesOfLadyPurple/Empurple-Training-Free-Algorithm-To-enhance-Diversity-of-The-Diffusion-Distillation-Model)** ([arXiv:2607.04276](https://arxiv.org/abs/2607.04276)) alongside an interactive Gradio demo on [Hugging Face Spaces (`coralLight/EMPURPLE`)](https://huggingface.co/spaces/coralLight/EMPURPLE) and [Google Colab](https://colab.research.google.com/drive/1DVw41J_7yzhBxRhhNeOsCFxz-ROZWHLw?usp=sharing).

---

#### Key Findings

- **PAC-Style Generalization & Information Bottleneck Analysis:** Aggressive early-step velocity redirection in few-step diffusion distillation enlarges the train–test gap, shifting intermediate noisy latent distributions and causing severe mode collapse.
- **Training-Free Latent Recycling:** By caching noisy latents at an intermediate timestep (e.g., $t=852$ from an 8-step SDXL UniPC pass) and reusing them across distilled generation, EMPURPLE restores structural and stylistic diversity without additional training.
- **7%–20% FID Improvement:** Improves FID across DMD2 (**+20% FID**), Hyper-SD, FlashSD, and SDXL-Lightning.

{% include figure.liquid loading="eager" path="assets/img/empurple_demo.jpg" title="EMPURPLE Hugging Face Space Demo" class="img-fluid rounded z-depth-1" zoomable=true %}

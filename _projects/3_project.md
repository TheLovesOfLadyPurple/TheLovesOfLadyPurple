---
layout: page
title: "EMPURPLE: Distillation Diversity"
description: "Training-free intermediate-latent recycling that boosts distilled diffusion FID by 7%–20%"
img: assets/img/empurple_comparison.jpg
importance: 3
category: work
related_publications: true
---

**EMPURPLE** (_Enhance Model Painting Using Recycled and Proper Latents is Easy_) {% cite li2026empurple %} is a training-free algorithm grounded in PAC-style generalization theory and the Information Bottleneck principle that restores generation diversity in few-step diffusion distillation models.

- **GitHub Repository:** [TheLovesOfLadyPurple/Empurple-Training-Free-Algorithm-To-enhance-Diversity-of-The-Diffusion-Distillation-Model](https://github.com/TheLovesOfLadyPurple/Empurple-Training-Free-Algorithm-To-enhance-Diversity-of-The-Diffusion-Distillation-Model)
- **Paper:** [arXiv:2607.04276](https://arxiv.org/abs/2607.04276)
- **Interactive Demos:** [Hugging Face Space (`coralLight/EMPURPLE`)](https://huggingface.co/spaces/coralLight/EMPURPLE) · [Google Colab Notebook](https://colab.research.google.com/drive/1DVw41J_7yzhBxRhhNeOsCFxz-ROZWHLw?usp=sharing)

<div class="row mt-3">
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid loading="eager" path="assets/img/empurple_demo.jpg" title="EMPURPLE Interactive Hugging Face Space Demo" class="img-fluid rounded z-depth-1" zoomable=true %}
  </div>
</div>
<div class="caption">
  Comparison cropped from our <a href="https://huggingface.co/spaces/coralLight/EMPURPLE" target="_blank">coralLight/EMPURPLE</a> Hugging Face Space for prompt <em>"a smiling girl"</em>. The original SDXL model samples 8 UniPC steps once and caches noisy latents at timestep 852; subsequent prompts reuse those latents. <strong>Left:</strong> Original DMD2 suffers from severe mode collapse. <strong>Right:</strong> EMPURPLE recovers rich variation across poses, lighting, backgrounds, and artistic styles without extra training.
</div>

### Key Contributions

- **Covariance PCA & PAC-Style Hypothesis Space Analysis:** Uses PCA on the covariance matrix of early-step outputs to measure output complexity (entropy), showing that the teacher model's early-step outputs are simpler (and therefore correspond to a smaller hypothesis space) than the distilled model's aggressive early-step outputs. This explains why diffusion distillation suffers from an enlarged train–test gap and distribution mismatch in intermediate noisy latents.
- **Model-Agnostic Latent Recycling:** Reuses cached coarse middle-step latents from the base diffusion trajectory before applying the distilled model for high-frequency detail synthesis.
- **7%–20% FID Gain Without Training:** Improves FID by **20% on DMD2** and **7%–20%** across Hyper-SD, FlashSD, and SDXL-Lightning with zero retraining overhead.

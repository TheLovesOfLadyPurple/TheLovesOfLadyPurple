---
layout: page
title: "F-scheduler: Fast Diffusion ODE Solver"
description: "Under Review at TMLR — Training-free 5–8 step ODE sampling outperforming 4-step SOTA distillation models"
img: assets/img/fscheduler_vs_dmd2.jpg
importance: 2
category: work
related_publications: true
---

**F-scheduler** (_Illuminating the Free-Lunch Design Space for Fast Sampling of Diffusion Models_) {% cite li2025fscheduler %} is a training-free time and Free-U skip-connection scheduler designed for few-step (`5–8` steps) diffusion ODE solvers (`UniPC`, `DPM++ 2M`), currently **under review at Transactions on Machine Learning Research (TMLR)**.

- **GitHub Repository:** [TheLovesOfLadyPurple/F-scheduler](https://github.com/TheLovesOfLadyPurple/F-scheduler)
- **Paper:** [arXiv:2510.02390](https://arxiv.org/abs/2510.02390)
- **Interactive Hugging Face Spaces (`coralLight`):**
  - [DMD2 vs. F-Scheduler Comparison](https://huggingface.co/spaces/coralLight/DMD2vsF-Scheduler)
  - [F-scheduler 4K](https://huggingface.co/spaces/coralLight/F-scheduler-4k)
  - [F-scheduler DreamshaperXL](https://huggingface.co/spaces/coralLight/F-scheduler-DreamshaperXL)
  - [F-scheduler Animation](https://huggingface.co/spaces/coralLight/F-scheduler-Animation)

<div class="row mt-3">
  <div class="col-sm-6 mt-3 mt-md-0">
    {% include figure.liquid loading="eager" path="assets/img/fscheduler_afs_result.jpg" title="F-scheduler + AFS Fast Inference Result" class="img-fluid rounded z-depth-1" zoomable=true %}
  </div>
  <div class="col-sm-6 mt-3 mt-md-0">
    {% include figure.liquid loading="eager" path="assets/img/dmd2_lora_result.jpg" title="DMD2 LoRA Comparison Result" class="img-fluid rounded z-depth-1" zoomable=true %}
  </div>
</div>
<div class="caption">
  Visual comparison cropped from our <a href="https://huggingface.co/spaces/coralLight/DMD2vsF-Scheduler" target="_blank">coralLight/DMD2vsF-Scheduler</a> Hugging Face Space on prompt <em>"Dark Moody Atmosphere, Photorealistic..."</em>: <strong>Left</strong> is our fast training-free inference result using Analytical First Step (AFS) + 5–8 step F-scheduler; <strong>Right</strong> is the 4-step DMD2 LoRA baseline result.
</div>

### Key Contributions

- **Terminal KL-Aware Time Schedule:** Retains a controlled terminal noise level rather than fully denoising to zero variance, enabling the $\beta$-VAE decoder to exploit its KL-regularized latent distribution during few-step generation.
- **Stage-Scheduled Free-U Net Modulation:** Identifies why standard Free-U Net degrades few-step (`<10`) sampling and schedules skip-connection scaling at the optimal inference stage.
- **5–8 Step ODE Sampling vs. 4-Step Distillation:** Compatible with standard ODE solvers (`UniPC`, `DPM++ 2M`), generating `1024×1024` images in **6 steps** and `512×512` images in **5 steps** with FID outperforming 4-step SOTA distillation models (e.g., DMD2 LoRA) and 20-step DPM++ 2M.

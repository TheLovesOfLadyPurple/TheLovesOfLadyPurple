---
layout: about
title: about
permalink: /
subtitle: Independent Researcher & Software Engineer · <a href="https://github.com/TheLovesOfLadyPurple">GitHub</a> · <a href="https://huggingface.co/coralLight">Hugging Face (coralLight)</a>

profile:
  align: right
  image: fscheduler_afs_result.jpg
  image_circular: false # crops the image to make it circular
  more_info: >
    <p><strong>Zilai Li</strong></p>
    <p>Independent Researcher &amp; Software Engineer</p>
    <p>M.Sc. CS, University of Nottingham</p>
    <p>B.Eng. CST, CUGB (Beijing)</p>

selected_papers: true # includes a list of papers marked as "selected={true}"
social: true # includes social icons at the bottom of the page

announcements:
  enabled: true # includes a list of news items
  scrollable: true # adds a vertical scroll bar if there are more than 3 news items
  limit: 5 # leave blank to include all the news in the `_news` folder

latest_posts:
  enabled: false
  scrollable: true # adds a vertical scroll bar if there are more than 3 new posts items
  limit: 3 # leave blank to include all the blog posts
---

I am an **Independent Researcher** and **Software Engineer**. Previously, I obtained my **M.Sc. in Computer Science (With Merit)** from the [University of Nottingham](https://www.nottingham.ac.uk/) (Nottingham, England, GB) and my **B.Eng. in Computer Science and Technology** from [China University of Geosciences, Beijing (CUGB)](https://en.cugb.edu.cn/) (Beijing, China).

My research centers on **efficient and trustworthy generative modeling**, with a focus on discrete diffusion ODE analysis, training-free enhancement of few-step diffusion distillation, and fast semantic watermark extraction:

- **One-Step Semantic Watermark Extraction ([RAIN](https://github.com/TheLovesOfLadyPurple/RAIN-lightweight-NN-for-one-step-semantic-watermark-extraction), _Accepted for Oral Presentation at BMVC 2026 TrustVis Workshop_):** A prompt-free, U-Net-free, dual-branch NAFNet architecture that extracts Gaussian-Shading semantic watermarks in **1.39 ms/image** with **47.4× fewer FLOPs** (`14.394 GFLOPs`) and **56× fewer parameters** (`15.468M`) than diffusion-scale one-step extractors (FARI & OSI), while matching 50-step DDIM Inversion accuracy (`99.99%`).
- **Fast ODE Solvers for Diffusion Models ([F-scheduler](https://github.com/TheLovesOfLadyPurple/F-scheduler), _Under Review at TMLR_):** A training-free time and Free-U skip-connection scheduler tailored for few-step (`5–8` steps) diffusion ODE solvers (`UniPC`, `DPM++ 2M`) that leverages the KL-regularized latent distribution in the $\beta$-VAE decoder, sampling `1024×1024` SDXL images in **6 steps** and `512×512` SD 1.5 images in **5 steps** while outperforming 4-step SOTA distillation models (e.g., DMD2 LoRA) and 20-step DPM++ 2M in FID.
- **Diversity Enhancement for Distilled Diffusion Models ([EMPURPLE](https://github.com/TheLovesOfLadyPurple/Empurple-Training-Free-Algorithm-To-enhance-Diversity-of-The-Diffusion-Distillation-Model), _Preprint_):** Uses PCA on the covariance matrix of early-step outputs to quantify output complexity (entropy), demonstrating that the teacher model's early outputs are simpler (hence a smaller hypothesis space under a PAC-style bound and the Information Bottleneck principle) than distilled models' outputs; proposes a training-free intermediate-latent recycling algorithm that improves FID by **7%–20%** across DMD2 (**+20% FID**), Hyper-SD, FlashSD, and SDXL-Lightning.
- **Open-Source Contributions & Interactive Demos:** Merged scheduler bug fix in [**Hugging Face Diffusers** (PR #14011)](https://github.com/huggingface/diffusers/pull/14011) (`FlowMatchEulerDiscreteScheduler`), with live interactive Gradio demos hosted on [**Hugging Face Spaces (`coralLight`)**](https://huggingface.co/coralLight).

---

### Interactive Demos & Visual Highlights

<div class="row mt-3">
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid loading="eager" path="assets/img/fscheduler_vs_dmd2.jpg" title="F-scheduler vs. DMD2 LoRA (Hugging Face Space)" class="img-fluid rounded z-depth-1" zoomable=true %}
  </div>
</div>
<div class="caption">
  <strong>F-scheduler (5–8 steps) vs. 4-step DMD2 LoRA</strong> (<a href="https://huggingface.co/spaces/coralLight/DMD2vsF-Scheduler" target="_blank">live demo on Hugging Face Spaces</a>): Left shows our training-free fast inference result using Analytical First Step (AFS) + F-scheduler; Right shows the 4-step DMD2 LoRA comparison under the same prompt (<em>"Dark Moody Atmosphere, Photorealistic..."</em>).
</div>

<div class="row mt-3">
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid loading="eager" path="assets/img/empurple_comparison.jpg" title="EMPURPLE: Original DMD2 vs. Cached Middle-Latent Augmentation" class="img-fluid rounded z-depth-1" zoomable=true %}
  </div>
</div>
<div class="caption">
  <strong>EMPURPLE Diversity Enhancement</strong> (<a href="https://huggingface.co/spaces/coralLight/EMPURPLE" target="_blank">live demo on Hugging Face Spaces</a>): Left shows 9 samples from original DMD2 on prompt <em>"a smiling girl"</em> (exhibiting severe mode collapse); Right shows EMPURPLE augmenting generation with recycled noisy latents cached at timestep 852 from an 8-step SDXL UniPC pass, restoring rich stylistic and structural diversity without retraining.
</div>

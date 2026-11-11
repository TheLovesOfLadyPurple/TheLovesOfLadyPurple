<div align="center">

# Zilai Li (李子来)

**Independent Researcher & Software Engineer**  
_Diffusion & Flow-Matching Generative Models · Fast Numerical ODE/SDE Samplers · Generative AI Safety & Watermarking_

[![Email](https://img.shields.io/badge/Email-lizilai2008%40gmail.com-EA4335?style=flat-square&logo=gmail&logoColor=white)](mailto:lizilai2008@gmail.com)
[![Hugging Face](https://img.shields.io/badge/%F0%9F%A4%97%20Hugging%20Face-coralLight-FFD21E?style=flat-square)](https://huggingface.co/coralLight)
[![OpenReview](https://img.shields.io/badge/OpenReview-~Zilai__Li1-8C1B13?style=flat-square)](https://openreview.net/profile?id=~Zilai_Li1)
[![CV PDF](https://img.shields.io/badge/Curriculum%20Vitae-PDF-0A66C2?style=flat-square&logo=adobeacrobatreader&logoColor=white)](assets/pdf/Zilai_Li_CV.pdf)

</div>

---

## 👋 About Me

I am an Independent Researcher and Software Engineer working on **efficient generative modeling** and **trustworthy generative AI**. My research focuses on understanding the trajectory geometry and vector-field dynamics of diffusion and flow-matching models to design **training-free fast samplers**, **diversity-preserving distillation sampling algorithms**, and **real-time semantic watermark extractors**.

### 🎓 Education

- **University of Nottingham** _(Nottingham, United Kingdom · 2021 – 2022)_  
  **M.Sc. in Computer Science (With Merit)**
- **China University of Geosciences, Beijing (CUGB)** _(Beijing, China · 2016 – 2020)_  
  **B.Eng. in Computer Science and Technology**

---

## 📄 Research & Publications

### 1. RAIN: One-Step Semantic Watermark Extraction Acceleration

> **Zilai Li**  
> 🏆 **Accepted at BMVC 2026 TrustVis Workshop (Oral Presentation)**  
> [[arXiv:2609.14856](https://arxiv.org/abs/2609.14856)] · [[OpenReview](https://openreview.net/forum?id=TPrWbukiLe)] · [[Paper PDF](assets/pdf/RAIN_BMVC2026_TrustVis.pdf)] · [[GitHub Repository](https://github.com/TheLovesOfLadyPurple/RAIN-lightweight-NN-for-one-step-semantic-watermark-extraction)]

<p align="center">
  <img src="assets/img/rain_pipeline.jpg" alt="RAIN One-Step Semantic Watermark Extraction Pipeline" width="88%">
</p>

- Replaces expensive multi-step DDIM inversion (`T = 50` steps of a ~1B-parameter diffusion UNet) with a lightweight **20M-parameter residual U-Net** (`RAIN`) for one-step terminal latent recovery in semantic watermarking (Tree-Ring, RingID, Gaussian Shading,PRC).
- Achieves a **213× inversion speedup** (`1568 ms` → `7.36 ms`) while retaining watermark verification AUROC (`1.000` clean, `0.985–0.996` under distortions) and improving multi-key identification accuracy under JPEG compression (`0.842` → `0.862`).

---

### 2. F-scheduler: Fast Diffusion ODE Solver via Bell-Shaped Curvature Prior

> **Zilai Li**  
> 📝 **Under Review at Transactions on Machine Learning Research (TMLR)**  
> [[arXiv:2510.02390](https://arxiv.org/abs/2510.02390)] · [[GitHub Repository](https://github.com/TheLovesOfLadyPurple/F-scheduler)] · [[🤗 Interactive Demo: DMD2 vs F-Scheduler](https://huggingface.co/spaces/coralLight/DMD2vsF-Scheduler)]

<p align="center">
  <img src="assets/img/fscheduler_vs_dmd2.jpg" alt="F-scheduler + AFS vs DMD2 4-step SDXL Comparison" width="88%">
</p>

- Formulates a training-free continuous-time log-SNR step allocation strategy guided by the empirical **F-distribution (bell-shaped) trajectory curvature profile** of diffusion probability flow ODEs, concentrating discretization nodes in the intermediate high-curvature regime (`λ ∈ [-2, 2]`).
- Coupled with **Analytical First Step (AFS)**, 4-step `F-scheduler` (3 NFE) on native SDXL matches or surpasses 4-step `DMD2` LoRA distillation without distillation training or mode collapse.

---

### 3. EMPURPLE: Training-Free Diversity Enhancement for Diffusion Distillation Models

> **Zilai Li**  
> 📝 **Preprint** _(Not yet submitted to a conference or workshop)_  
> [[arXiv:2607.04276](https://arxiv.org/abs/2607.04276)] · [[GitHub Repository](https://github.com/TheLovesOfLadyPurple/Empurple-Training-Free-Algorithm-To-enhance-Diversity-of-The-Diffusion-Distillation-Model)] · [[🤗 Interactive Demo: EMPURPLE](https://huggingface.co/spaces/coralLight/EMPURPLE)]

<p align="center">
  <img src="assets/img/empurple_comparison.jpg" alt="EMPURPLE vs Standard SDXL-Lightning Diversity Comparison" width="88%">
</p>

- Identifies the Jacobian contraction mechanism responsible for severe structural homogenization and mode collapse in few-step adversarial/progressive diffusion distillation models (`SDXL-Lightning`, `DMD2`, `SDXL-Turbo`, `LCM`).
- Introduces a plug-and-play orthogonal latent subspace perturbation schedule during early denoising transitions that restores structural, pose, and layout diversity with **zero extra NFE**.

---

## 🛠️ Open-Source Contributions & Interactive Spaces

### Merged Pull Request in `huggingface/diffusers`

- **[PR #14011](https://github.com/huggingface/diffusers/pull/14011)** _(Merged Jul 2026)_ — **Fix Rectified Flow Time Scheduler Indexing (`FlowMatchEulerDiscreteScheduler`)**  
  Fixed a timestep schedule indexing mismatch in `FlowMatchEulerDiscreteScheduler` during custom sigma/timestep transitions for Rectified Flow models.

### 🤗 Hugging Face Interactive Spaces (`@coralLight`)

| Space                         | Description                                                                             | Link                                                                           |
| :---------------------------- | :-------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------- |
| **DMD2 vs F-Scheduler**       | Side-by-side 4-step SDXL comparison between `F-scheduler + AFS` (3 NFE) and `DMD2` LoRA | [🤗 Space](https://huggingface.co/spaces/coralLight/DMD2vsF-Scheduler)         |
| **EMPURPLE**                  | Training-free diversity enhancement on 4-step `SDXL-Lightning` across multiple seeds    | [🤗 Space](https://huggingface.co/spaces/coralLight/EMPURPLE)                  |
| **F-scheduler 4K**            | High-resolution 4K ultra-fast synthesis powered by `F-scheduler`                        | [🤗 Space](https://huggingface.co/spaces/coralLight/F-scheduler-4k)            |
| **F-scheduler DreamshaperXL** | Few-step `DreamshaperXL` text-to-image generation with `F-scheduler`                    | [🤗 Space](https://huggingface.co/spaces/coralLight/F-scheduler-DreamshaperXL) |
| **F-scheduler Animation**     | Fast anime/stylized SDXL generation using `F-scheduler`                                 | [🤗 Space](https://huggingface.co/spaces/coralLight/F-scheduler-Animation)     |

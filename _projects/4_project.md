---
layout: page
title: "Diffusers & HF Spaces Contributions"
description: "Merged scheduler fixes in Hugging Face Diffusers and interactive Gradio demos on coralLight"
img: assets/img/fscheduler_afs_result.jpg
importance: 4
category: work
related_publications: false
---

Alongside my research on diffusion ODE solvers and distillation, I contribute to the open-source **[Hugging Face Diffusers](https://github.com/huggingface/diffusers)** library and maintain interactive model playgrounds on **[Hugging Face Spaces (`coralLight`)](https://huggingface.co/coralLight)**.

### Hugging Face Diffusers Merged Pull Request

- **[PR #14011 (Merged)](https://github.com/huggingface/diffusers/pull/14011) — Fix Rectified Flow / Flow Matching Time Scheduler Problem:**
  Fixed an inconsistency in `FlowMatchEulerDiscreteScheduler.set_timesteps` where passing custom `timesteps` produced different shifted timestep arrays compared to `num_inference_steps` when `shift != 1`, ensuring accurate timestep conditioning for Flow Matching ODE/SDE solvers.

### Interactive Hugging Face Spaces (`coralLight`)

- **[coralLight/DMD2vsF-Scheduler](https://huggingface.co/spaces/coralLight/DMD2vsF-Scheduler):** Side-by-side interactive comparison between F-scheduler (with Analytical First Step) and DMD2 LoRA.
- **[coralLight/EMPURPLE](https://huggingface.co/spaces/coralLight/EMPURPLE):** Interactive demonstration of training-free diversity enhancement for DMD2 using cached SDXL middle latents at $t=852$.
- **[coralLight/F-scheduler-4k](https://huggingface.co/spaces/coralLight/F-scheduler-4k):** High-resolution few-step generation powered by F-scheduler.
- **[coralLight/F-scheduler-DreamshaperXL](https://huggingface.co/spaces/coralLight/F-scheduler-DreamshaperXL):** Few-step DreamshaperXL sampling with F-scheduler.
- **[coralLight/F-scheduler-Animation](https://huggingface.co/spaces/coralLight/F-scheduler-Animation):** Anime/illustration domain few-step ODE sampling demo.
